import 'package:djangoflow_sync_foundation/src/interfaces/sync_model.dart';

abstract class Backend<T extends SyncModel> {
  Future<List<T>> getAll({
    List<int>? ids,
    DateTime? since,
    int? limit,
    int? offset,
  });
  Future<T?> getById(int id);
  Future<T> create(T item);
  Future<T> update(T item);
  Future<void> delete(int id);

  Future<bool> isAvailable();
}
