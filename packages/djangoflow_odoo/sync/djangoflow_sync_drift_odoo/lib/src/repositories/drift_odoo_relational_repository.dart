import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';

import '../database/database.dart';
import 'drift_odoo_sync_repository.dart';

abstract class DriftRelationalRepository<T extends SyncModel,
    TTable extends BaseTable> extends DriftOdooSyncRepository<T, TTable> {
  final Map<String, DriftOdooSyncRepository> relatedRepositories;

  DriftRelationalRepository(
    super.primaryBackend,
    super.secondaryBackend,
    super.syncStrategy,
    this.relatedRepositories,
  );

  @override
  Future<void> sync() async {
    for (var repository in relatedRepositories.values) {
      await repository.sync();
    }

    await super.sync();
  }
}
