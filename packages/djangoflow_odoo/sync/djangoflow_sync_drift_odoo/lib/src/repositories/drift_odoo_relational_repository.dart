import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';

import 'package:djangoflow_sync_drift_odoo/src/database/database.dart';
import 'package:djangoflow_sync_drift_odoo/src/repositories/drift_odoo_sync_repository.dart';

abstract class DriftRelationalRepository<T extends SyncModel,
    TTable extends BaseTable> extends DriftOdooSyncRepository<T, TTable> {
  DriftRelationalRepository(
    super.primaryBackend,
    super.secondaryBackend,
    super.syncStrategy,
    this.relatedRepositories,
  );
  final Map<String, DriftOdooSyncRepository> relatedRepositories;

  @override
  Future<void> sync() async {
    for (final repository in relatedRepositories.values) {
      await repository.sync();
    }

    await super.sync();
  }
}
