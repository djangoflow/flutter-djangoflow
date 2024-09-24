import 'sync_model.dart';
import 'backend.dart';

abstract class Repository<T extends SyncModel> {
  final Backend<T> primaryBackend;

  Repository(this.primaryBackend);

  Future<List<T>> getAll();
  Future<T?> getById(int id);
  Future<T> create(T item);
  Future<T> update(T item);
  Future<void> delete(int id);
}
