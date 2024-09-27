import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';
import 'package:drift/drift.dart';
import 'package:djangoflow_sync_drift_odoo/src/backends/drift_backend.dart';
import 'package:djangoflow_sync_drift_odoo/src/backends/odoo_backend.dart';
import 'package:djangoflow_sync_drift_odoo/src/database/database.dart';
import 'package:djangoflow_sync_drift_odoo/src/database/database.drift.dart';
import 'package:djangoflow_sync_drift_odoo/src/repositories/id_mapping_repository.dart';
import 'package:djangoflow_sync_drift_odoo/src/repositories/sync_registry_repository.dart';

class DriftOdooSyncStrategy<T extends SyncModel, TTable extends BaseTable>
    implements SyncStrategy<T> {
  DriftOdooSyncStrategy(
    this.syncRegistryRepository,
    this.driftBackendId,
    this.odooBackendId,
    this.idMappingRepository,
  );
  final SyncRegistryRepository syncRegistryRepository;
  final String driftBackendId;
  final String odooBackendId;

  final IdMappingRepository idMappingRepository;

  @override
  Future<void> sync(Backend<T> source, Backend<T> destination) async {
    if (source is OdooBackend && destination is DriftBackend) {
      await _syncOdooToDrift(
        source as OdooBackend<T>,
        destination as DriftBackend<T, TTable, dynamic>,
      );
    } else if (source is DriftBackend && destination is OdooBackend) {
      await _syncDriftToOdoo(
        source as DriftBackend<T, TTable, dynamic>,
        destination as OdooBackend<T>,
      );
    } else {
      throw UnsupportedError('Unsupported sync direction');
    }
  }

  Future<void> _syncOdooToDrift(
    OdooBackend<T> odooBackend,
    DriftBackend<T, TTable, dynamic> driftBackend,
  ) async {
    final lastSyncTime = await syncRegistryRepository.getLastSyncTime(
      odooBackendId,
      odooBackend.modelName,
    );
    final updatedItems = await odooBackend.getAll(since: lastSyncTime);

    for (final odooItem in updatedItems) {
      try {
        final driftItem = await driftBackend.getById(odooItem.id);
        if (driftItem != null) {
          final resolvedItem = await resolveConflict(odooItem, driftItem);

          await _updateOrCreateInDrift(
            resolvedItem,
            driftBackend,
            odooBackend.modelName,
            shouldReplace: resolvedItem.writeDate != driftItem.writeDate,
          );
        } else {
          await _updateOrCreateInDrift(
            odooItem,
            driftBackend,
            odooBackend.modelName,
          );
        }
      } catch (e, stackTrace) {
        logger.e(
          'Error syncing item ${odooItem.id} from Odoo to Drift: ',
          e,
          stackTrace,
        );
      }
    }
  }

  Future<void> _syncDriftToOdoo(
    DriftBackend<T, TTable, dynamic> driftBackend,
    OdooBackend<T> odooBackend,
  ) async {
    final pendingRecords = await syncRegistryRepository.getPendingSyncRecords(
      driftBackendId,
      odooBackend.modelName,
    );

    for (final record in pendingRecords) {
      try {
        final driftItem = await driftBackend.getById(record.modelRecordId);
        if (driftItem != null) {
          final odooItem = await odooBackend.getById(record.modelRecordId);
          if (odooItem != null) {
            final resolvedItem = await resolveConflict(driftItem, odooItem);
            await _syncItemToOdoo(
              resolvedItem,
              driftBackend,
              odooBackend,
              record,
            );
          } else {
            await _syncItemToOdoo(driftItem, driftBackend, odooBackend, record);
          }
        }
      } catch (e, stackTrace) {
        logger.e(
          'Error syncing item ${record.modelRecordId} to Odoo: ',
          e,
          stackTrace,
        );
      }
    }
  }

  Future<void> _syncItemToOdoo(
    T item,
    DriftBackend<T, TTable, dynamic> driftBackend,
    OdooBackend<T> odooBackend,
    SyncRegistry syncRegistry,
  ) async {
    try {
      if (syncRegistry.recordDeletedAt != null) {
        await odooBackend.delete(item.id);
        await driftBackend.delete(item.id);
        await deleteRegistry(syncRegistry.modelRecordId, odooBackend.modelName);
        logger
            .i('Deleted item ${item.id} from both backends and sync registry');
      } else if (IdGenerator.isTemporaryId(item.id)) {
        logger.i('Processing item with temporary ID ${item.id}');
        final createdItem = await odooBackend.create(item);
        logger.i('Created item in Odoo with permanent ID ${createdItem.id}');

        await driftBackend.delete(item.id);
        await driftBackend.create(createdItem);
        logger.i(
          'Replaced temporary ID ${item.id} with permanent ID ${createdItem.id} in Drift backend',
        );

        await idMappingRepository.updateRelatedFields(
          odooBackend.modelName,
          item.id,
          createdItem.id,
        );
        logger.i(
          'Updated related fields for ${odooBackend.modelName}: ${item.id} -> ${createdItem.id}',
        );

        await deleteRegistry(syncRegistry.modelRecordId, odooBackend.modelName);
        logger.i('Deleted old sync registry entry for temporary ID ${item.id}');
      } else {
        await odooBackend.update(item);
        logger.i('Updated item ${item.id} in Odoo');
      }
      await syncRegistryRepository.markSyncComplete(syncRegistry.id);
      logger.i('Marked sync complete for record ${syncRegistry.id}');
    } catch (e, stackTrace) {
      logger.e('Error in _syncItemToOdoo for item ${item.id}', e, stackTrace);
      // Depending on your error handling strategy, you might want to rethrow or handle the error differently
    }
  }

  @override
  Future<void> syncBatch(
    List<T> items,
    Backend<T> destination, {
    String? modelName,
  }) async {
    if (modelName == null) {
      throw ArgumentError('modelName cannot be null');
    }
    final destinationIsAvailable = await destination.isAvailable();
    if (!destinationIsAvailable) {
      throw BackendNotAvailableException(
        'Destination backend is not available',
      );
    }
    if (destination is DriftBackend<T, TTable, dynamic>) {
      final updates = <SyncRegistriesCompanion>[];
      for (final item in items) {
        final existingItem = await destination.getById(item.id);
        if (existingItem != null) {
          final resolvedItem = await resolveConflict(item, existingItem);
          await _updateOrCreateInDrift(resolvedItem, destination, modelName);
        } else {
          await _updateOrCreateInDrift(item, destination, modelName);
        }
      }
      await syncRegistryRepository.batchUpsertRegistry(updates);
    } else if (destination is OdooBackend<T>) {
      final updates = items
          .map(
            (item) => _getSyncRegistryCompanion(item, modelName, odooBackendId),
          )
          .toList();
      await syncRegistryRepository.batchUpsertRegistry(updates);
    }
  }

  SyncRegistriesCompanion _getSyncRegistryCompanion(
    T item,
    String modelName,
    String backendId,
  ) =>
      SyncRegistriesCompanion(
        modelName: Value(modelName),
        modelRecordId: Value(item.id),
        backendId: Value(backendId),
        recordWriteDate: Value(item.writeDate),
        updatedAt: Value(DateTime.timestamp()),
        pendingSync: const Value(false),
      );

  Future<void> _updateOrCreateInDrift(
    T item,
    DriftBackend<T, TTable, dynamic> driftBackend,
    String modelName, {
    bool shouldReplace = true,
  }) async {
    final existingItem = await driftBackend.getById(item.id);
    if (existingItem != null && shouldReplace) {
      await driftBackend.update(item);
    } else if (existingItem == null) {
      await driftBackend.create(item);
    }
    await _upsertSyncRegistry(
      modelRecordId: item.id,
      backendId: driftBackendId,
      writeDate: item.writeDate,
      modelName: modelName,
      pendingSync: false,
    );
  }

  Future<void> _upsertSyncRegistry({
    required int modelRecordId,
    required String backendId,
    required DateTime writeDate,
    required String modelName,
    DateTime? recordDeletedAt,
    bool pendingSync = true,
  }) async {
    await syncRegistryRepository.upsertRegistry(
      modelName: modelName,
      modelRecordId: modelRecordId,
      backendId: backendId,
      recordWriteDate: writeDate,
      recordDeletedAt: recordDeletedAt,
      pendingSync: pendingSync,
    );
  }

  Future<T> createWithTemporaryId(
    T item,
    DriftBackend<T, TTable, dynamic> driftBackend,
    String modelName,
  ) async {
    final temporaryId = IdGenerator.generateTemporaryId();
    final itemWithTempId = item.copyWith(id: temporaryId) as T;
    final createdItem = await driftBackend.create(itemWithTempId);
    await _upsertSyncRegistry(
      modelRecordId: temporaryId,
      backendId: driftBackendId,
      writeDate: createdItem.writeDate,
      modelName: modelName,
      pendingSync: true,
    );
    return createdItem;
  }

  Future<void> markAsDeletedInSecondary(
    int id,
    DriftBackend<T, TTable, dynamic> driftBackend,
    String modelName,
  ) async {
    final item = await driftBackend.getById(id);
    if (item != null) {
      await driftBackend.update(item.copyWith(isMarkedAsDeleted: true) as T);
      await _upsertSyncRegistry(
        modelRecordId: id,
        backendId: driftBackendId,
        writeDate: DateTime.timestamp(),
        modelName: modelName,
        recordDeletedAt: DateTime.timestamp(),
        pendingSync: true,
      );
    }
  }

  @override
  Future<T> resolveConflict(T sourceItem, T destinationItem) async {
    if (sourceItem.writeDate.isAfter(destinationItem.writeDate)) {
      return sourceItem;
    } else {
      return destinationItem;
    }
  }

  Future<void> deleteRegistry(int modelRecordId, String modelName) async {
    await syncRegistryRepository.deleteRegistry(
      modelName: modelName,
      modelRecordId: modelRecordId,
    );
  }

  // Future<void> _cleanupDeletedRecords(
  //     Backend<T> source, Backend<T> destination) async {
  //   final modelName = (source is OdooBackend)
  //       ? source.modelName
  //       : (destination as OdooBackend).modelName;

  //   final allRegistries =
  //       await syncRegistryRepository.getAllRegistries(modelName);

  //   for (var registry in allRegistries) {
  //     final sourceItem = await source.getById(registry.modelRecordId);
  //     final destinationItem = await destination.getById(registry.modelRecordId);

  //     if (sourceItem == null && destinationItem == null) {
  //       // Item is deleted from both backends, remove from SyncRegistry
  //       await syncRegistryRepository.deleteRegistry(
  //         modelName: modelName,
  //         modelRecordId: registry.modelRecordId,
  //       );
  //       logger.i(
  //           'Deleted orphaned SyncRegistry entry for $modelName with id ${registry.modelRecordId}');
  //     }
  //   }
  // }
}
