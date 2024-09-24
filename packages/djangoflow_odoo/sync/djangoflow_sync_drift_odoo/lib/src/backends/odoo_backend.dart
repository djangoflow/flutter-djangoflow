import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

abstract class OdooBackend<T extends SyncModel> implements Backend<T> {
  final OdooClient odooClient;
  final ConnectionStateManager connectionStateManager;

  OdooBackend(this.odooClient, this.connectionStateManager);

  String get modelName;

  List<String> getFields();
  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toOdooJson(T item);

  @override
  Future<bool> isAvailable() async {
    return connectionStateManager.isOnline;
  }

  @override
  Future<T> create(T item) async {
    final id = await odooClient.callKw({
      'model': modelName,
      'method': 'create',
      'args': [
        toOdooJson(item),
      ],
      'kwargs': {},
    });
    final createdItem = await getById(id);
    if (createdItem != null) {
      logger.i('Created record for $modelName with id $id');
      return createdItem;
    } else {
      throw Exception('Failed to create remote record');
    }
  }

  @override
  Future<void> delete(int id) async {
    logger.i('Deleting record for $modelName with id $id');
    await odooClient.callKw({
      'model': modelName,
      'method': 'unlink',
      'args': [id],
      'kwargs': {},
    });

    logger.i('Deleted record for $modelName with id $id');
  }

  @override
  Future<List<T>> getAll({List<int>? ids, DateTime? since}) async {
    logger.i('Fetching all records for $modelName');
    final response = await odooClient.callKw({
      'model': modelName,
      'method': 'search_read',
      'args': [],
      'kwargs': {
        'fields': getFields(),
        if (ids != null || since != null)
          'domain': [
            if (ids != null) ['id', 'in', ids],
            if (since != null) ['write_date', '>=', since.toIso8601String()]
          ],
      },
    });

    logger.d('Fetched ${response.length} records for $modelName');

    final items = (response as List).map((record) => fromJson(record)).toList();

    return items;
  }

  @override
  Future<T?> getById(int id) async {
    final response = await odooClient.callKw({
      'model': modelName,
      'method': 'read',
      'args': [id],
      'kwargs': {
        'fields': getFields(),
      },
    });
    if (response is List && response.isNotEmpty) {
      final item = fromJson(response[0]);

      return item;
    }
    return null;
  }

  @override
  Future<T> update(T item) async {
    await odooClient.callKw({
      'model': modelName,
      'method': 'write',
      'args': [
        item.id,
        toOdooJson(item),
      ],
      'kwargs': {},
    });
    final updatedItem = await getById(item.id);
    if (updatedItem != null) {
      return updatedItem;
    } else {
      throw Exception('Failed to update remote record');
    }
  }

  Map<String, dynamic> removeOdooReservedFields(Map<String, dynamic> json) {
    return json
      ..remove('id')
      ..remove('is_marked_as_deleted')
      ..remove('create_date')
      ..remove('write_date');
  }
}
