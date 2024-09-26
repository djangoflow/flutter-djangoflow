import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';
import 'package:drift/drift.dart';

import 'package:djangoflow_sync_drift_odoo/src/database/database.dart';

abstract class DriftBackend<T extends SyncModel, TTable extends BaseTable,
    TD extends DataClass> implements Backend<T> {
  DriftBackend(this.database, this.table, this.backendId);
  final GeneratedDatabase database;
  final TableInfo<TTable, dynamic> table;

  final String backendId;
  T fromJson(Map<String, dynamic> json);

  T convertToModel(TD driftModel);

  @override
  Future<bool> isAvailable() async => true;

  // Abstract method to be implemented by concrete classes
  UpdateCompanion<Insertable> createCompanionWithBackendId(T item);

  @override
  Future<List<T>> getAll({List<int>? ids, DateTime? since}) async {
    final query = database.select(table)
      ..where((tbl) => tbl.backendId.equals(backendId));
    if (ids != null && ids.isNotEmpty) {
      query.where((tbl) => tbl.id.isIn(ids));
    }
    if (since != null) {
      query.where((tbl) => tbl.writeDate.isBiggerThanValue(since));
    }
    final results = await query.get();
    return results.map((row) => convertToModel(row)).toList();
  }

  @override
  Future<T?> getById(int id) async {
    final query = database.select(table)
      ..where((tbl) => tbl.id.equals(id) & tbl.backendId.equals(backendId));
    final result = await query.getSingleOrNull();
    return result != null ? convertToModel(result) : null;
  }

  @override
  Future<T> create(T item) async {
    final companion = createCompanionWithBackendId(item);
    final result = await database.into(table).insert(companion);
    final createdItem = await getById(result);
    if (createdItem != null) {
      return createdItem;
    } else {
      throw Exception('Failed to create item in Drift backend');
    }
  }

  @override
  Future<T> update(T item) async {
    final companion = createCompanionWithBackendId(item);
    await (database.update(table)
          ..where((tbl) =>
              tbl.id.equals(item.id) & tbl.backendId.equals(backendId)))
        .write(companion);
    final updatedItem = await getById(item.id);
    if (updatedItem != null) {
      return updatedItem;
    } else {
      throw Exception('Failed to update item in Drift backend');
    }
  }

  @override
  Future<void> delete(int id) async {
    await (database.delete(table)
          ..where((tbl) => tbl.id.equals(id) & tbl.backendId.equals(backendId)))
        .go();
  }
}
