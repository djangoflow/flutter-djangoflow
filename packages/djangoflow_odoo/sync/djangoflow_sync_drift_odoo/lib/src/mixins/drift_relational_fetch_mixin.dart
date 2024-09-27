import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';
import 'package:drift/drift.dart';

import 'package:djangoflow_sync_drift_odoo/src/backends/drift_backend.dart';
import 'package:djangoflow_sync_drift_odoo/src/database/database.dart';

mixin DriftRelationalFetchMixin<T extends SyncModel, TTable extends BaseTable,
    TD extends DataClass> on DriftBackend<T, TTable, TD> {
  List<Join> getJoins();
  T mapRowToModel(TypedResult row);

  JoinedSelectStatement<HasResultSet, dynamic> createJoinQuery() =>
      database.select(table).join(getJoins());
}
