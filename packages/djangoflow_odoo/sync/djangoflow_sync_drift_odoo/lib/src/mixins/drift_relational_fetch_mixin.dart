import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';
import 'package:drift/drift.dart';

import '../backends/drift_backend.dart';
import '../database/database.dart';

mixin DriftRelationalFetchMixin<T extends SyncModel, TTable extends BaseTable,
    TD extends DataClass> on DriftBackend<T, TTable, TD> {
  List<Join> getJoins();
  T mapRowToModel(TypedResult row);

  JoinedSelectStatement<HasResultSet, dynamic> createJoinQuery() {
    return database.select(table).join(getJoins());
  }
}
