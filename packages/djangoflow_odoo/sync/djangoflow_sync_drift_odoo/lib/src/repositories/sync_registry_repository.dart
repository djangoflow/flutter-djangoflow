import 'package:djangoflow_sync_drift_odoo/src/database/database.drift.dart';

abstract class SyncRegistryRepository {
  Future<void> upsertRegistry({
    required String modelName,
    required int modelRecordId,
    required String backendId,
    required DateTime recordWriteDate,
    DateTime? recordDeletedAt,
    bool pendingSync = true,
  });

  Future<void> batchUpsertRegistry(
    List<SyncRegistriesCompanion> syncRegistries,
  );

  Future<List<SyncRegistry>> getPendingSyncRecords(
    String backendId,
    String modelName,
  );

  Future<void> markSyncComplete(int syncRegistryId);

  Future<String> registerBackend(String id, String type);

  Future<DateTime?> getLastSyncTime(String backendId, String modelName);
  Future<void> deleteRegistry({
    required String modelName,
    required int modelRecordId,
  });

  Future<List<SyncRegistry>> getAllRegistries(String modelName);
}
