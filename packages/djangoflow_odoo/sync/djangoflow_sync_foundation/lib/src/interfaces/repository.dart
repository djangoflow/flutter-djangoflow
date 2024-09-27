import 'package:djangoflow_sync_foundation/src/interfaces/sync_model.dart';
import 'package:djangoflow_sync_foundation/src/interfaces/backend.dart';

abstract class Repository<T extends SyncModel> {
  Repository(this.primaryBackend);
  final Backend<T> primaryBackend;

  Future<List<T>> getAll();
  Future<T?> getById(int id);
  Future<T> create(T item);
  Future<T> update(T item);
  Future<void> delete(int id);
}
