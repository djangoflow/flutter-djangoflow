import 'package:djangoflow_sync_foundation/src/interfaces/sync_model.dart';
import 'package:djangoflow_sync_foundation/src/interfaces/backend.dart';

abstract class SyncStrategy<T extends SyncModel> {
  Future<void> sync(Backend<T> source, Backend<T> destination);
  Future<T> resolveConflict(T sourceItem, T destinationItem);

  Future<void> syncBatch(List<T> items, Backend<T> destination);
}
