// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:djangoflow_sync_drift_odoo/src/database/database.drift.dart'
    as i1;
import 'package:djangoflow_sync_drift_odoo/src/database/database.dart' as i2;
import 'package:drift/src/runtime/query_builder/query_builder.dart' as i3;
import 'package:drift/internal/modular.dart' as i4;

typedef $$BaseTableTableCreateCompanionBuilder = i1.BaseTableCompanion
    Function({
  required int id,
  required DateTime createDate,
  required DateTime writeDate,
  i0.Value<bool> isMarkedAsDeleted,
  required String backendId,
  i0.Value<int> rowid,
});
typedef $$BaseTableTableUpdateCompanionBuilder = i1.BaseTableCompanion
    Function({
  i0.Value<int> id,
  i0.Value<DateTime> createDate,
  i0.Value<DateTime> writeDate,
  i0.Value<bool> isMarkedAsDeleted,
  i0.Value<String> backendId,
  i0.Value<int> rowid,
});

class $$BaseTableTableFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$BaseTableTable> {
  $$BaseTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get createDate => $composableBuilder(
      column: $table.createDate, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get writeDate => $composableBuilder(
      column: $table.writeDate, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<bool> get isMarkedAsDeleted => $composableBuilder(
      column: $table.isMarkedAsDeleted,
      builder: (column) => i0.ColumnFilters(column));

  i1.$$SyncBackendsTableFilterComposer get backendId {
    final i1.$$SyncBackendsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.backendId,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncBackendsTable>('sync_backends'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncBackendsTableFilterComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncBackendsTable>('sync_backends'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BaseTableTableOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$BaseTableTable> {
  $$BaseTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get createDate => $composableBuilder(
      column: $table.createDate,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get writeDate => $composableBuilder(
      column: $table.writeDate,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<bool> get isMarkedAsDeleted => $composableBuilder(
      column: $table.isMarkedAsDeleted,
      builder: (column) => i0.ColumnOrderings(column));

  i1.$$SyncBackendsTableOrderingComposer get backendId {
    final i1.$$SyncBackendsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.backendId,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncBackendsTable>('sync_backends'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncBackendsTableOrderingComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncBackendsTable>('sync_backends'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BaseTableTableAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$BaseTableTable> {
  $$BaseTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get createDate => $composableBuilder(
      column: $table.createDate, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get writeDate =>
      $composableBuilder(column: $table.writeDate, builder: (column) => column);

  i0.GeneratedColumn<bool> get isMarkedAsDeleted => $composableBuilder(
      column: $table.isMarkedAsDeleted, builder: (column) => column);

  i1.$$SyncBackendsTableAnnotationComposer get backendId {
    final i1.$$SyncBackendsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.backendId,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncBackendsTable>('sync_backends'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncBackendsTableAnnotationComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncBackendsTable>('sync_backends'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BaseTableTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$BaseTableTable,
    i1.BaseTableData,
    i1.$$BaseTableTableFilterComposer,
    i1.$$BaseTableTableOrderingComposer,
    i1.$$BaseTableTableAnnotationComposer,
    $$BaseTableTableCreateCompanionBuilder,
    $$BaseTableTableUpdateCompanionBuilder,
    (
      i1.BaseTableData,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$BaseTableTable,
          i1.BaseTableData>
    ),
    i1.BaseTableData,
    i0.PrefetchHooks Function({bool backendId})> {
  $$BaseTableTableTableManager(
      i0.GeneratedDatabase db, i1.$BaseTableTable table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$$BaseTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$$BaseTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$$BaseTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            i0.Value<DateTime> createDate = const i0.Value.absent(),
            i0.Value<DateTime> writeDate = const i0.Value.absent(),
            i0.Value<bool> isMarkedAsDeleted = const i0.Value.absent(),
            i0.Value<String> backendId = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.BaseTableCompanion(
            id: id,
            createDate: createDate,
            writeDate: writeDate,
            isMarkedAsDeleted: isMarkedAsDeleted,
            backendId: backendId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required DateTime createDate,
            required DateTime writeDate,
            i0.Value<bool> isMarkedAsDeleted = const i0.Value.absent(),
            required String backendId,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.BaseTableCompanion.insert(
            id: id,
            createDate: createDate,
            writeDate: writeDate,
            isMarkedAsDeleted: isMarkedAsDeleted,
            backendId: backendId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BaseTableTableProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.$BaseTableTable,
    i1.BaseTableData,
    i1.$$BaseTableTableFilterComposer,
    i1.$$BaseTableTableOrderingComposer,
    i1.$$BaseTableTableAnnotationComposer,
    $$BaseTableTableCreateCompanionBuilder,
    $$BaseTableTableUpdateCompanionBuilder,
    (
      i1.BaseTableData,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$BaseTableTable,
          i1.BaseTableData>
    ),
    i1.BaseTableData,
    i0.PrefetchHooks Function({bool backendId})>;
typedef $$SyncBackendsTableCreateCompanionBuilder = i1.SyncBackendsCompanion
    Function({
  required String id,
  required String type,
  required String baseUrl,
  i0.Value<int> rowid,
});
typedef $$SyncBackendsTableUpdateCompanionBuilder = i1.SyncBackendsCompanion
    Function({
  i0.Value<String> id,
  i0.Value<String> type,
  i0.Value<String> baseUrl,
  i0.Value<int> rowid,
});

class $$SyncBackendsTableFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SyncBackendsTable> {
  $$SyncBackendsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get baseUrl => $composableBuilder(
      column: $table.baseUrl, builder: (column) => i0.ColumnFilters(column));

  i0.Expression<bool> baseTableRefs(
      i0.Expression<bool> Function(i1.$$BaseTableTableFilterComposer f) f) {
    final i1.$$BaseTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$BaseTableTable>('base_table'),
        getReferencedColumn: (t) => t.backendId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$BaseTableTableFilterComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$BaseTableTable>('base_table'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  i0.Expression<bool> syncRegistriesRefs(
      i0.Expression<bool> Function(i1.$$SyncRegistriesTableFilterComposer f)
          f) {
    final i1.$$SyncRegistriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncRegistriesTable>('sync_registries'),
        getReferencedColumn: (t) => t.backendId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncRegistriesTableFilterComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncRegistriesTable>('sync_registries'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SyncBackendsTableOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SyncBackendsTable> {
  $$SyncBackendsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get baseUrl => $composableBuilder(
      column: $table.baseUrl, builder: (column) => i0.ColumnOrderings(column));
}

class $$SyncBackendsTableAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SyncBackendsTable> {
  $$SyncBackendsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  i0.GeneratedColumn<String> get baseUrl =>
      $composableBuilder(column: $table.baseUrl, builder: (column) => column);

  i0.Expression<T> baseTableRefs<T extends Object>(
      i0.Expression<T> Function(i1.$$BaseTableTableAnnotationComposer a) f) {
    final i1.$$BaseTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$BaseTableTable>('base_table'),
        getReferencedColumn: (t) => t.backendId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$BaseTableTableAnnotationComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$BaseTableTable>('base_table'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  i0.Expression<T> syncRegistriesRefs<T extends Object>(
      i0.Expression<T> Function(i1.$$SyncRegistriesTableAnnotationComposer a)
          f) {
    final i1.$$SyncRegistriesTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: i4.ReadDatabaseContainer($db)
                .resultSet<i1.$SyncRegistriesTable>('sync_registries'),
            getReferencedColumn: (t) => t.backendId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                i1.$$SyncRegistriesTableAnnotationComposer(
                  $db: $db,
                  $table: i4.ReadDatabaseContainer($db)
                      .resultSet<i1.$SyncRegistriesTable>('sync_registries'),
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$SyncBackendsTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$SyncBackendsTable,
    i1.SyncBackend,
    i1.$$SyncBackendsTableFilterComposer,
    i1.$$SyncBackendsTableOrderingComposer,
    i1.$$SyncBackendsTableAnnotationComposer,
    $$SyncBackendsTableCreateCompanionBuilder,
    $$SyncBackendsTableUpdateCompanionBuilder,
    (
      i1.SyncBackend,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncBackendsTable,
          i1.SyncBackend>
    ),
    i1.SyncBackend,
    i0.PrefetchHooks Function({bool baseTableRefs, bool syncRegistriesRefs})> {
  $$SyncBackendsTableTableManager(
      i0.GeneratedDatabase db, i1.$SyncBackendsTable table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$$SyncBackendsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$$SyncBackendsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$$SyncBackendsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<String> id = const i0.Value.absent(),
            i0.Value<String> type = const i0.Value.absent(),
            i0.Value<String> baseUrl = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.SyncBackendsCompanion(
            id: id,
            type: type,
            baseUrl: baseUrl,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String type,
            required String baseUrl,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.SyncBackendsCompanion.insert(
            id: id,
            type: type,
            baseUrl: baseUrl,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncBackendsTableProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.$SyncBackendsTable,
    i1.SyncBackend,
    i1.$$SyncBackendsTableFilterComposer,
    i1.$$SyncBackendsTableOrderingComposer,
    i1.$$SyncBackendsTableAnnotationComposer,
    $$SyncBackendsTableCreateCompanionBuilder,
    $$SyncBackendsTableUpdateCompanionBuilder,
    (
      i1.SyncBackend,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncBackendsTable,
          i1.SyncBackend>
    ),
    i1.SyncBackend,
    i0.PrefetchHooks Function({bool baseTableRefs, bool syncRegistriesRefs})>;
typedef $$SyncRegistriesTableCreateCompanionBuilder = i1.SyncRegistriesCompanion
    Function({
  i0.Value<int> id,
  required int modelRecordId,
  required String modelName,
  required String backendId,
  i0.Value<DateTime?> recordDeletedAt,
  required DateTime recordWriteDate,
  i0.Value<bool> pendingSync,
  required DateTime updatedAt,
  required DateTime createdAt,
});
typedef $$SyncRegistriesTableUpdateCompanionBuilder = i1.SyncRegistriesCompanion
    Function({
  i0.Value<int> id,
  i0.Value<int> modelRecordId,
  i0.Value<String> modelName,
  i0.Value<String> backendId,
  i0.Value<DateTime?> recordDeletedAt,
  i0.Value<DateTime> recordWriteDate,
  i0.Value<bool> pendingSync,
  i0.Value<DateTime> updatedAt,
  i0.Value<DateTime> createdAt,
});

class $$SyncRegistriesTableFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SyncRegistriesTable> {
  $$SyncRegistriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<int> get modelRecordId => $composableBuilder(
      column: $table.modelRecordId,
      builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get modelName => $composableBuilder(
      column: $table.modelName, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get recordDeletedAt => $composableBuilder(
      column: $table.recordDeletedAt,
      builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get recordWriteDate => $composableBuilder(
      column: $table.recordWriteDate,
      builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<bool> get pendingSync => $composableBuilder(
      column: $table.pendingSync,
      builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => i0.ColumnFilters(column));

  i1.$$SyncBackendsTableFilterComposer get backendId {
    final i1.$$SyncBackendsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.backendId,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncBackendsTable>('sync_backends'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncBackendsTableFilterComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncBackendsTable>('sync_backends'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SyncRegistriesTableOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SyncRegistriesTable> {
  $$SyncRegistriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<int> get modelRecordId => $composableBuilder(
      column: $table.modelRecordId,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get modelName => $composableBuilder(
      column: $table.modelName,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get recordDeletedAt => $composableBuilder(
      column: $table.recordDeletedAt,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get recordWriteDate => $composableBuilder(
      column: $table.recordWriteDate,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<bool> get pendingSync => $composableBuilder(
      column: $table.pendingSync,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => i0.ColumnOrderings(column));

  i1.$$SyncBackendsTableOrderingComposer get backendId {
    final i1.$$SyncBackendsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.backendId,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncBackendsTable>('sync_backends'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncBackendsTableOrderingComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncBackendsTable>('sync_backends'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SyncRegistriesTableAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$SyncRegistriesTable> {
  $$SyncRegistriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<int> get modelRecordId => $composableBuilder(
      column: $table.modelRecordId, builder: (column) => column);

  i0.GeneratedColumn<String> get modelName =>
      $composableBuilder(column: $table.modelName, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get recordDeletedAt => $composableBuilder(
      column: $table.recordDeletedAt, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get recordWriteDate => $composableBuilder(
      column: $table.recordWriteDate, builder: (column) => column);

  i0.GeneratedColumn<bool> get pendingSync => $composableBuilder(
      column: $table.pendingSync, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  i1.$$SyncBackendsTableAnnotationComposer get backendId {
    final i1.$$SyncBackendsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.backendId,
        referencedTable: i4.ReadDatabaseContainer($db)
            .resultSet<i1.$SyncBackendsTable>('sync_backends'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$$SyncBackendsTableAnnotationComposer(
              $db: $db,
              $table: i4.ReadDatabaseContainer($db)
                  .resultSet<i1.$SyncBackendsTable>('sync_backends'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SyncRegistriesTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$SyncRegistriesTable,
    i1.SyncRegistry,
    i1.$$SyncRegistriesTableFilterComposer,
    i1.$$SyncRegistriesTableOrderingComposer,
    i1.$$SyncRegistriesTableAnnotationComposer,
    $$SyncRegistriesTableCreateCompanionBuilder,
    $$SyncRegistriesTableUpdateCompanionBuilder,
    (
      i1.SyncRegistry,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncRegistriesTable,
          i1.SyncRegistry>
    ),
    i1.SyncRegistry,
    i0.PrefetchHooks Function({bool backendId})> {
  $$SyncRegistriesTableTableManager(
      i0.GeneratedDatabase db, i1.$SyncRegistriesTable table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$$SyncRegistriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$$SyncRegistriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => i1
              .$$SyncRegistriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            i0.Value<int> modelRecordId = const i0.Value.absent(),
            i0.Value<String> modelName = const i0.Value.absent(),
            i0.Value<String> backendId = const i0.Value.absent(),
            i0.Value<DateTime?> recordDeletedAt = const i0.Value.absent(),
            i0.Value<DateTime> recordWriteDate = const i0.Value.absent(),
            i0.Value<bool> pendingSync = const i0.Value.absent(),
            i0.Value<DateTime> updatedAt = const i0.Value.absent(),
            i0.Value<DateTime> createdAt = const i0.Value.absent(),
          }) =>
              i1.SyncRegistriesCompanion(
            id: id,
            modelRecordId: modelRecordId,
            modelName: modelName,
            backendId: backendId,
            recordDeletedAt: recordDeletedAt,
            recordWriteDate: recordWriteDate,
            pendingSync: pendingSync,
            updatedAt: updatedAt,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            required int modelRecordId,
            required String modelName,
            required String backendId,
            i0.Value<DateTime?> recordDeletedAt = const i0.Value.absent(),
            required DateTime recordWriteDate,
            i0.Value<bool> pendingSync = const i0.Value.absent(),
            required DateTime updatedAt,
            required DateTime createdAt,
          }) =>
              i1.SyncRegistriesCompanion.insert(
            id: id,
            modelRecordId: modelRecordId,
            modelName: modelName,
            backendId: backendId,
            recordDeletedAt: recordDeletedAt,
            recordWriteDate: recordWriteDate,
            pendingSync: pendingSync,
            updatedAt: updatedAt,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncRegistriesTableProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.$SyncRegistriesTable,
    i1.SyncRegistry,
    i1.$$SyncRegistriesTableFilterComposer,
    i1.$$SyncRegistriesTableOrderingComposer,
    i1.$$SyncRegistriesTableAnnotationComposer,
    $$SyncRegistriesTableCreateCompanionBuilder,
    $$SyncRegistriesTableUpdateCompanionBuilder,
    (
      i1.SyncRegistry,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncRegistriesTable,
          i1.SyncRegistry>
    ),
    i1.SyncRegistry,
    i0.PrefetchHooks Function({bool backendId})>;

class $BaseTableTable extends i2.BaseTable
    with i0.TableInfo<$BaseTableTable, i1.BaseTableData> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BaseTableTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
      'id', aliasedName, false,
      type: i0.DriftSqlType.int, requiredDuringInsert: true);
  static const i0.VerificationMeta _createDateMeta =
      const i0.VerificationMeta('createDate');
  @override
  late final i0.GeneratedColumn<DateTime> createDate =
      i0.GeneratedColumn<DateTime>('create_date', aliasedName, false,
          type: i0.DriftSqlType.dateTime, requiredDuringInsert: true);
  static const i0.VerificationMeta _writeDateMeta =
      const i0.VerificationMeta('writeDate');
  @override
  late final i0.GeneratedColumn<DateTime> writeDate =
      i0.GeneratedColumn<DateTime>('write_date', aliasedName, false,
          type: i0.DriftSqlType.dateTime, requiredDuringInsert: true);
  static const i0.VerificationMeta _isMarkedAsDeletedMeta =
      const i0.VerificationMeta('isMarkedAsDeleted');
  @override
  late final i0.GeneratedColumn<bool> isMarkedAsDeleted =
      i0.GeneratedColumn<bool>('is_marked_as_deleted', aliasedName, false,
          type: i0.DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
              'CHECK ("is_marked_as_deleted" IN (0, 1))'),
          defaultValue: const i3.Constant(false));
  static const i0.VerificationMeta _backendIdMeta =
      const i0.VerificationMeta('backendId');
  @override
  late final i0.GeneratedColumn<String> backendId = i0.GeneratedColumn<String>(
      'backend_id', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
          'REFERENCES sync_backends (id)'));
  @override
  List<i0.GeneratedColumn> get $columns =>
      [id, createDate, writeDate, isMarkedAsDeleted, backendId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'base_table';
  @override
  i0.VerificationContext validateIntegrity(
      i0.Insertable<i1.BaseTableData> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('create_date')) {
      context.handle(
          _createDateMeta,
          createDate.isAcceptableOrUnknown(
              data['create_date']!, _createDateMeta));
    } else if (isInserting) {
      context.missing(_createDateMeta);
    }
    if (data.containsKey('write_date')) {
      context.handle(_writeDateMeta,
          writeDate.isAcceptableOrUnknown(data['write_date']!, _writeDateMeta));
    } else if (isInserting) {
      context.missing(_writeDateMeta);
    }
    if (data.containsKey('is_marked_as_deleted')) {
      context.handle(
          _isMarkedAsDeletedMeta,
          isMarkedAsDeleted.isAcceptableOrUnknown(
              data['is_marked_as_deleted']!, _isMarkedAsDeletedMeta));
    }
    if (data.containsKey('backend_id')) {
      context.handle(_backendIdMeta,
          backendId.isAcceptableOrUnknown(data['backend_id']!, _backendIdMeta));
    } else if (isInserting) {
      context.missing(_backendIdMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => const {};
  @override
  i1.BaseTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.BaseTableData(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}id'])!,
      createDate: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.dateTime, data['${effectivePrefix}create_date'])!,
      writeDate: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.dateTime, data['${effectivePrefix}write_date'])!,
      isMarkedAsDeleted: attachedDatabase.typeMapping.read(i0.DriftSqlType.bool,
          data['${effectivePrefix}is_marked_as_deleted'])!,
      backendId: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}backend_id'])!,
    );
  }

  @override
  $BaseTableTable createAlias(String alias) {
    return $BaseTableTable(attachedDatabase, alias);
  }
}

class BaseTableData extends i0.DataClass
    implements i0.Insertable<i1.BaseTableData> {
  final int id;
  final DateTime createDate;
  final DateTime writeDate;
  final bool isMarkedAsDeleted;
  final String backendId;
  const BaseTableData(
      {required this.id,
      required this.createDate,
      required this.writeDate,
      required this.isMarkedAsDeleted,
      required this.backendId});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['create_date'] = i0.Variable<DateTime>(createDate);
    map['write_date'] = i0.Variable<DateTime>(writeDate);
    map['is_marked_as_deleted'] = i0.Variable<bool>(isMarkedAsDeleted);
    map['backend_id'] = i0.Variable<String>(backendId);
    return map;
  }

  i1.BaseTableCompanion toCompanion(bool nullToAbsent) {
    return i1.BaseTableCompanion(
      id: i0.Value(id),
      createDate: i0.Value(createDate),
      writeDate: i0.Value(writeDate),
      isMarkedAsDeleted: i0.Value(isMarkedAsDeleted),
      backendId: i0.Value(backendId),
    );
  }

  factory BaseTableData.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return BaseTableData(
      id: serializer.fromJson<int>(json['id']),
      createDate: serializer.fromJson<DateTime>(json['createDate']),
      writeDate: serializer.fromJson<DateTime>(json['writeDate']),
      isMarkedAsDeleted: serializer.fromJson<bool>(json['isMarkedAsDeleted']),
      backendId: serializer.fromJson<String>(json['backendId']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createDate': serializer.toJson<DateTime>(createDate),
      'writeDate': serializer.toJson<DateTime>(writeDate),
      'isMarkedAsDeleted': serializer.toJson<bool>(isMarkedAsDeleted),
      'backendId': serializer.toJson<String>(backendId),
    };
  }

  i1.BaseTableData copyWith(
          {int? id,
          DateTime? createDate,
          DateTime? writeDate,
          bool? isMarkedAsDeleted,
          String? backendId}) =>
      i1.BaseTableData(
        id: id ?? this.id,
        createDate: createDate ?? this.createDate,
        writeDate: writeDate ?? this.writeDate,
        isMarkedAsDeleted: isMarkedAsDeleted ?? this.isMarkedAsDeleted,
        backendId: backendId ?? this.backendId,
      );
  BaseTableData copyWithCompanion(i1.BaseTableCompanion data) {
    return BaseTableData(
      id: data.id.present ? data.id.value : this.id,
      createDate:
          data.createDate.present ? data.createDate.value : this.createDate,
      writeDate: data.writeDate.present ? data.writeDate.value : this.writeDate,
      isMarkedAsDeleted: data.isMarkedAsDeleted.present
          ? data.isMarkedAsDeleted.value
          : this.isMarkedAsDeleted,
      backendId: data.backendId.present ? data.backendId.value : this.backendId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BaseTableData(')
          ..write('id: $id, ')
          ..write('createDate: $createDate, ')
          ..write('writeDate: $writeDate, ')
          ..write('isMarkedAsDeleted: $isMarkedAsDeleted, ')
          ..write('backendId: $backendId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createDate, writeDate, isMarkedAsDeleted, backendId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.BaseTableData &&
          other.id == this.id &&
          other.createDate == this.createDate &&
          other.writeDate == this.writeDate &&
          other.isMarkedAsDeleted == this.isMarkedAsDeleted &&
          other.backendId == this.backendId);
}

class BaseTableCompanion extends i0.UpdateCompanion<i1.BaseTableData> {
  final i0.Value<int> id;
  final i0.Value<DateTime> createDate;
  final i0.Value<DateTime> writeDate;
  final i0.Value<bool> isMarkedAsDeleted;
  final i0.Value<String> backendId;
  final i0.Value<int> rowid;
  const BaseTableCompanion({
    this.id = const i0.Value.absent(),
    this.createDate = const i0.Value.absent(),
    this.writeDate = const i0.Value.absent(),
    this.isMarkedAsDeleted = const i0.Value.absent(),
    this.backendId = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  BaseTableCompanion.insert({
    required int id,
    required DateTime createDate,
    required DateTime writeDate,
    this.isMarkedAsDeleted = const i0.Value.absent(),
    required String backendId,
    this.rowid = const i0.Value.absent(),
  })  : id = i0.Value(id),
        createDate = i0.Value(createDate),
        writeDate = i0.Value(writeDate),
        backendId = i0.Value(backendId);
  static i0.Insertable<i1.BaseTableData> custom({
    i0.Expression<int>? id,
    i0.Expression<DateTime>? createDate,
    i0.Expression<DateTime>? writeDate,
    i0.Expression<bool>? isMarkedAsDeleted,
    i0.Expression<String>? backendId,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (createDate != null) 'create_date': createDate,
      if (writeDate != null) 'write_date': writeDate,
      if (isMarkedAsDeleted != null) 'is_marked_as_deleted': isMarkedAsDeleted,
      if (backendId != null) 'backend_id': backendId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.BaseTableCompanion copyWith(
      {i0.Value<int>? id,
      i0.Value<DateTime>? createDate,
      i0.Value<DateTime>? writeDate,
      i0.Value<bool>? isMarkedAsDeleted,
      i0.Value<String>? backendId,
      i0.Value<int>? rowid}) {
    return i1.BaseTableCompanion(
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      writeDate: writeDate ?? this.writeDate,
      isMarkedAsDeleted: isMarkedAsDeleted ?? this.isMarkedAsDeleted,
      backendId: backendId ?? this.backendId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (createDate.present) {
      map['create_date'] = i0.Variable<DateTime>(createDate.value);
    }
    if (writeDate.present) {
      map['write_date'] = i0.Variable<DateTime>(writeDate.value);
    }
    if (isMarkedAsDeleted.present) {
      map['is_marked_as_deleted'] = i0.Variable<bool>(isMarkedAsDeleted.value);
    }
    if (backendId.present) {
      map['backend_id'] = i0.Variable<String>(backendId.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BaseTableCompanion(')
          ..write('id: $id, ')
          ..write('createDate: $createDate, ')
          ..write('writeDate: $writeDate, ')
          ..write('isMarkedAsDeleted: $isMarkedAsDeleted, ')
          ..write('backendId: $backendId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncBackendsTable extends i2.SyncBackends
    with i0.TableInfo<$SyncBackendsTable, i1.SyncBackend> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncBackendsTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<String> id = i0.GeneratedColumn<String>(
      'id', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  static const i0.VerificationMeta _typeMeta =
      const i0.VerificationMeta('type');
  @override
  late final i0.GeneratedColumn<String> type = i0.GeneratedColumn<String>(
      'type', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  static const i0.VerificationMeta _baseUrlMeta =
      const i0.VerificationMeta('baseUrl');
  @override
  late final i0.GeneratedColumn<String> baseUrl = i0.GeneratedColumn<String>(
      'base_url', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<i0.GeneratedColumn> get $columns => [id, type, baseUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_backends';
  @override
  i0.VerificationContext validateIntegrity(
      i0.Insertable<i1.SyncBackend> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('base_url')) {
      context.handle(_baseUrlMeta,
          baseUrl.isAcceptableOrUnknown(data['base_url']!, _baseUrlMeta));
    } else if (isInserting) {
      context.missing(_baseUrlMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id, baseUrl};
  @override
  i1.SyncBackend map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.SyncBackend(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}type'])!,
      baseUrl: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}base_url'])!,
    );
  }

  @override
  $SyncBackendsTable createAlias(String alias) {
    return $SyncBackendsTable(attachedDatabase, alias);
  }
}

class SyncBackend extends i0.DataClass
    implements i0.Insertable<i1.SyncBackend> {
  final String id;
  final String type;
  final String baseUrl;
  const SyncBackend(
      {required this.id, required this.type, required this.baseUrl});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<String>(id);
    map['type'] = i0.Variable<String>(type);
    map['base_url'] = i0.Variable<String>(baseUrl);
    return map;
  }

  i1.SyncBackendsCompanion toCompanion(bool nullToAbsent) {
    return i1.SyncBackendsCompanion(
      id: i0.Value(id),
      type: i0.Value(type),
      baseUrl: i0.Value(baseUrl),
    );
  }

  factory SyncBackend.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return SyncBackend(
      id: serializer.fromJson<String>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      baseUrl: serializer.fromJson<String>(json['baseUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer.toJson<String>(type),
      'baseUrl': serializer.toJson<String>(baseUrl),
    };
  }

  i1.SyncBackend copyWith({String? id, String? type, String? baseUrl}) =>
      i1.SyncBackend(
        id: id ?? this.id,
        type: type ?? this.type,
        baseUrl: baseUrl ?? this.baseUrl,
      );
  SyncBackend copyWithCompanion(i1.SyncBackendsCompanion data) {
    return SyncBackend(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      baseUrl: data.baseUrl.present ? data.baseUrl.value : this.baseUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncBackend(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('baseUrl: $baseUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, baseUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.SyncBackend &&
          other.id == this.id &&
          other.type == this.type &&
          other.baseUrl == this.baseUrl);
}

class SyncBackendsCompanion extends i0.UpdateCompanion<i1.SyncBackend> {
  final i0.Value<String> id;
  final i0.Value<String> type;
  final i0.Value<String> baseUrl;
  final i0.Value<int> rowid;
  const SyncBackendsCompanion({
    this.id = const i0.Value.absent(),
    this.type = const i0.Value.absent(),
    this.baseUrl = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  SyncBackendsCompanion.insert({
    required String id,
    required String type,
    required String baseUrl,
    this.rowid = const i0.Value.absent(),
  })  : id = i0.Value(id),
        type = i0.Value(type),
        baseUrl = i0.Value(baseUrl);
  static i0.Insertable<i1.SyncBackend> custom({
    i0.Expression<String>? id,
    i0.Expression<String>? type,
    i0.Expression<String>? baseUrl,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (baseUrl != null) 'base_url': baseUrl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.SyncBackendsCompanion copyWith(
      {i0.Value<String>? id,
      i0.Value<String>? type,
      i0.Value<String>? baseUrl,
      i0.Value<int>? rowid}) {
    return i1.SyncBackendsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      baseUrl: baseUrl ?? this.baseUrl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = i0.Variable<String>(type.value);
    }
    if (baseUrl.present) {
      map['base_url'] = i0.Variable<String>(baseUrl.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncBackendsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncRegistriesTable extends i2.SyncRegistries
    with i0.TableInfo<$SyncRegistriesTable, i1.SyncRegistry> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncRegistriesTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          i0.GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const i0.VerificationMeta _modelRecordIdMeta =
      const i0.VerificationMeta('modelRecordId');
  @override
  late final i0.GeneratedColumn<int> modelRecordId = i0.GeneratedColumn<int>(
      'model_record_id', aliasedName, false,
      type: i0.DriftSqlType.int, requiredDuringInsert: true);
  static const i0.VerificationMeta _modelNameMeta =
      const i0.VerificationMeta('modelName');
  @override
  late final i0.GeneratedColumn<String> modelName = i0.GeneratedColumn<String>(
      'model_name', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  static const i0.VerificationMeta _backendIdMeta =
      const i0.VerificationMeta('backendId');
  @override
  late final i0.GeneratedColumn<String> backendId = i0.GeneratedColumn<String>(
      'backend_id', aliasedName, false,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
          'REFERENCES sync_backends (id) ON DELETE CASCADE'));
  static const i0.VerificationMeta _recordDeletedAtMeta =
      const i0.VerificationMeta('recordDeletedAt');
  @override
  late final i0.GeneratedColumn<DateTime> recordDeletedAt =
      i0.GeneratedColumn<DateTime>('record_deleted_at', aliasedName, true,
          type: i0.DriftSqlType.dateTime, requiredDuringInsert: false);
  static const i0.VerificationMeta _recordWriteDateMeta =
      const i0.VerificationMeta('recordWriteDate');
  @override
  late final i0.GeneratedColumn<DateTime> recordWriteDate =
      i0.GeneratedColumn<DateTime>('record_write_date', aliasedName, false,
          type: i0.DriftSqlType.dateTime, requiredDuringInsert: true);
  static const i0.VerificationMeta _pendingSyncMeta =
      const i0.VerificationMeta('pendingSync');
  @override
  late final i0.GeneratedColumn<bool> pendingSync = i0.GeneratedColumn<bool>(
      'pending_sync', aliasedName, false,
      type: i0.DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
          'CHECK ("pending_sync" IN (0, 1))'),
      defaultValue: const i3.Constant(false));
  static const i0.VerificationMeta _updatedAtMeta =
      const i0.VerificationMeta('updatedAt');
  @override
  late final i0.GeneratedColumn<DateTime> updatedAt =
      i0.GeneratedColumn<DateTime>('updated_at', aliasedName, false,
          type: i0.DriftSqlType.dateTime, requiredDuringInsert: true);
  static const i0.VerificationMeta _createdAtMeta =
      const i0.VerificationMeta('createdAt');
  @override
  late final i0.GeneratedColumn<DateTime> createdAt =
      i0.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: i0.DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<i0.GeneratedColumn> get $columns => [
        id,
        modelRecordId,
        modelName,
        backendId,
        recordDeletedAt,
        recordWriteDate,
        pendingSync,
        updatedAt,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_registries';
  @override
  i0.VerificationContext validateIntegrity(
      i0.Insertable<i1.SyncRegistry> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('model_record_id')) {
      context.handle(
          _modelRecordIdMeta,
          modelRecordId.isAcceptableOrUnknown(
              data['model_record_id']!, _modelRecordIdMeta));
    } else if (isInserting) {
      context.missing(_modelRecordIdMeta);
    }
    if (data.containsKey('model_name')) {
      context.handle(_modelNameMeta,
          modelName.isAcceptableOrUnknown(data['model_name']!, _modelNameMeta));
    } else if (isInserting) {
      context.missing(_modelNameMeta);
    }
    if (data.containsKey('backend_id')) {
      context.handle(_backendIdMeta,
          backendId.isAcceptableOrUnknown(data['backend_id']!, _backendIdMeta));
    } else if (isInserting) {
      context.missing(_backendIdMeta);
    }
    if (data.containsKey('record_deleted_at')) {
      context.handle(
          _recordDeletedAtMeta,
          recordDeletedAt.isAcceptableOrUnknown(
              data['record_deleted_at']!, _recordDeletedAtMeta));
    }
    if (data.containsKey('record_write_date')) {
      context.handle(
          _recordWriteDateMeta,
          recordWriteDate.isAcceptableOrUnknown(
              data['record_write_date']!, _recordWriteDateMeta));
    } else if (isInserting) {
      context.missing(_recordWriteDateMeta);
    }
    if (data.containsKey('pending_sync')) {
      context.handle(
          _pendingSyncMeta,
          pendingSync.isAcceptableOrUnknown(
              data['pending_sync']!, _pendingSyncMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<i0.GeneratedColumn>> get uniqueKeys => [
        {modelName, modelRecordId, backendId},
      ];
  @override
  i1.SyncRegistry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.SyncRegistry(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}id'])!,
      modelRecordId: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int, data['${effectivePrefix}model_record_id'])!,
      modelName: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}model_name'])!,
      backendId: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}backend_id'])!,
      recordDeletedAt: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.dateTime,
          data['${effectivePrefix}record_deleted_at']),
      recordWriteDate: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.dateTime,
          data['${effectivePrefix}record_write_date'])!,
      pendingSync: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.bool, data['${effectivePrefix}pending_sync'])!,
      updatedAt: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      createdAt: attachedDatabase.typeMapping.read(
          i0.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SyncRegistriesTable createAlias(String alias) {
    return $SyncRegistriesTable(attachedDatabase, alias);
  }
}

class SyncRegistry extends i0.DataClass
    implements i0.Insertable<i1.SyncRegistry> {
  final int id;
  final int modelRecordId;
  final String modelName;
  final String backendId;
  final DateTime? recordDeletedAt;
  final DateTime recordWriteDate;
  final bool pendingSync;
  final DateTime updatedAt;
  final DateTime createdAt;
  const SyncRegistry(
      {required this.id,
      required this.modelRecordId,
      required this.modelName,
      required this.backendId,
      this.recordDeletedAt,
      required this.recordWriteDate,
      required this.pendingSync,
      required this.updatedAt,
      required this.createdAt});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['model_record_id'] = i0.Variable<int>(modelRecordId);
    map['model_name'] = i0.Variable<String>(modelName);
    map['backend_id'] = i0.Variable<String>(backendId);
    if (!nullToAbsent || recordDeletedAt != null) {
      map['record_deleted_at'] = i0.Variable<DateTime>(recordDeletedAt);
    }
    map['record_write_date'] = i0.Variable<DateTime>(recordWriteDate);
    map['pending_sync'] = i0.Variable<bool>(pendingSync);
    map['updated_at'] = i0.Variable<DateTime>(updatedAt);
    map['created_at'] = i0.Variable<DateTime>(createdAt);
    return map;
  }

  i1.SyncRegistriesCompanion toCompanion(bool nullToAbsent) {
    return i1.SyncRegistriesCompanion(
      id: i0.Value(id),
      modelRecordId: i0.Value(modelRecordId),
      modelName: i0.Value(modelName),
      backendId: i0.Value(backendId),
      recordDeletedAt: recordDeletedAt == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(recordDeletedAt),
      recordWriteDate: i0.Value(recordWriteDate),
      pendingSync: i0.Value(pendingSync),
      updatedAt: i0.Value(updatedAt),
      createdAt: i0.Value(createdAt),
    );
  }

  factory SyncRegistry.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return SyncRegistry(
      id: serializer.fromJson<int>(json['id']),
      modelRecordId: serializer.fromJson<int>(json['modelRecordId']),
      modelName: serializer.fromJson<String>(json['modelName']),
      backendId: serializer.fromJson<String>(json['backendId']),
      recordDeletedAt: serializer.fromJson<DateTime?>(json['recordDeletedAt']),
      recordWriteDate: serializer.fromJson<DateTime>(json['recordWriteDate']),
      pendingSync: serializer.fromJson<bool>(json['pendingSync']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'modelRecordId': serializer.toJson<int>(modelRecordId),
      'modelName': serializer.toJson<String>(modelName),
      'backendId': serializer.toJson<String>(backendId),
      'recordDeletedAt': serializer.toJson<DateTime?>(recordDeletedAt),
      'recordWriteDate': serializer.toJson<DateTime>(recordWriteDate),
      'pendingSync': serializer.toJson<bool>(pendingSync),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  i1.SyncRegistry copyWith(
          {int? id,
          int? modelRecordId,
          String? modelName,
          String? backendId,
          i0.Value<DateTime?> recordDeletedAt = const i0.Value.absent(),
          DateTime? recordWriteDate,
          bool? pendingSync,
          DateTime? updatedAt,
          DateTime? createdAt}) =>
      i1.SyncRegistry(
        id: id ?? this.id,
        modelRecordId: modelRecordId ?? this.modelRecordId,
        modelName: modelName ?? this.modelName,
        backendId: backendId ?? this.backendId,
        recordDeletedAt: recordDeletedAt.present
            ? recordDeletedAt.value
            : this.recordDeletedAt,
        recordWriteDate: recordWriteDate ?? this.recordWriteDate,
        pendingSync: pendingSync ?? this.pendingSync,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
      );
  SyncRegistry copyWithCompanion(i1.SyncRegistriesCompanion data) {
    return SyncRegistry(
      id: data.id.present ? data.id.value : this.id,
      modelRecordId: data.modelRecordId.present
          ? data.modelRecordId.value
          : this.modelRecordId,
      modelName: data.modelName.present ? data.modelName.value : this.modelName,
      backendId: data.backendId.present ? data.backendId.value : this.backendId,
      recordDeletedAt: data.recordDeletedAt.present
          ? data.recordDeletedAt.value
          : this.recordDeletedAt,
      recordWriteDate: data.recordWriteDate.present
          ? data.recordWriteDate.value
          : this.recordWriteDate,
      pendingSync:
          data.pendingSync.present ? data.pendingSync.value : this.pendingSync,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncRegistry(')
          ..write('id: $id, ')
          ..write('modelRecordId: $modelRecordId, ')
          ..write('modelName: $modelName, ')
          ..write('backendId: $backendId, ')
          ..write('recordDeletedAt: $recordDeletedAt, ')
          ..write('recordWriteDate: $recordWriteDate, ')
          ..write('pendingSync: $pendingSync, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, modelRecordId, modelName, backendId,
      recordDeletedAt, recordWriteDate, pendingSync, updatedAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.SyncRegistry &&
          other.id == this.id &&
          other.modelRecordId == this.modelRecordId &&
          other.modelName == this.modelName &&
          other.backendId == this.backendId &&
          other.recordDeletedAt == this.recordDeletedAt &&
          other.recordWriteDate == this.recordWriteDate &&
          other.pendingSync == this.pendingSync &&
          other.updatedAt == this.updatedAt &&
          other.createdAt == this.createdAt);
}

class SyncRegistriesCompanion extends i0.UpdateCompanion<i1.SyncRegistry> {
  final i0.Value<int> id;
  final i0.Value<int> modelRecordId;
  final i0.Value<String> modelName;
  final i0.Value<String> backendId;
  final i0.Value<DateTime?> recordDeletedAt;
  final i0.Value<DateTime> recordWriteDate;
  final i0.Value<bool> pendingSync;
  final i0.Value<DateTime> updatedAt;
  final i0.Value<DateTime> createdAt;
  const SyncRegistriesCompanion({
    this.id = const i0.Value.absent(),
    this.modelRecordId = const i0.Value.absent(),
    this.modelName = const i0.Value.absent(),
    this.backendId = const i0.Value.absent(),
    this.recordDeletedAt = const i0.Value.absent(),
    this.recordWriteDate = const i0.Value.absent(),
    this.pendingSync = const i0.Value.absent(),
    this.updatedAt = const i0.Value.absent(),
    this.createdAt = const i0.Value.absent(),
  });
  SyncRegistriesCompanion.insert({
    this.id = const i0.Value.absent(),
    required int modelRecordId,
    required String modelName,
    required String backendId,
    this.recordDeletedAt = const i0.Value.absent(),
    required DateTime recordWriteDate,
    this.pendingSync = const i0.Value.absent(),
    required DateTime updatedAt,
    required DateTime createdAt,
  })  : modelRecordId = i0.Value(modelRecordId),
        modelName = i0.Value(modelName),
        backendId = i0.Value(backendId),
        recordWriteDate = i0.Value(recordWriteDate),
        updatedAt = i0.Value(updatedAt),
        createdAt = i0.Value(createdAt);
  static i0.Insertable<i1.SyncRegistry> custom({
    i0.Expression<int>? id,
    i0.Expression<int>? modelRecordId,
    i0.Expression<String>? modelName,
    i0.Expression<String>? backendId,
    i0.Expression<DateTime>? recordDeletedAt,
    i0.Expression<DateTime>? recordWriteDate,
    i0.Expression<bool>? pendingSync,
    i0.Expression<DateTime>? updatedAt,
    i0.Expression<DateTime>? createdAt,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (modelRecordId != null) 'model_record_id': modelRecordId,
      if (modelName != null) 'model_name': modelName,
      if (backendId != null) 'backend_id': backendId,
      if (recordDeletedAt != null) 'record_deleted_at': recordDeletedAt,
      if (recordWriteDate != null) 'record_write_date': recordWriteDate,
      if (pendingSync != null) 'pending_sync': pendingSync,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  i1.SyncRegistriesCompanion copyWith(
      {i0.Value<int>? id,
      i0.Value<int>? modelRecordId,
      i0.Value<String>? modelName,
      i0.Value<String>? backendId,
      i0.Value<DateTime?>? recordDeletedAt,
      i0.Value<DateTime>? recordWriteDate,
      i0.Value<bool>? pendingSync,
      i0.Value<DateTime>? updatedAt,
      i0.Value<DateTime>? createdAt}) {
    return i1.SyncRegistriesCompanion(
      id: id ?? this.id,
      modelRecordId: modelRecordId ?? this.modelRecordId,
      modelName: modelName ?? this.modelName,
      backendId: backendId ?? this.backendId,
      recordDeletedAt: recordDeletedAt ?? this.recordDeletedAt,
      recordWriteDate: recordWriteDate ?? this.recordWriteDate,
      pendingSync: pendingSync ?? this.pendingSync,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (modelRecordId.present) {
      map['model_record_id'] = i0.Variable<int>(modelRecordId.value);
    }
    if (modelName.present) {
      map['model_name'] = i0.Variable<String>(modelName.value);
    }
    if (backendId.present) {
      map['backend_id'] = i0.Variable<String>(backendId.value);
    }
    if (recordDeletedAt.present) {
      map['record_deleted_at'] = i0.Variable<DateTime>(recordDeletedAt.value);
    }
    if (recordWriteDate.present) {
      map['record_write_date'] = i0.Variable<DateTime>(recordWriteDate.value);
    }
    if (pendingSync.present) {
      map['pending_sync'] = i0.Variable<bool>(pendingSync.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = i0.Variable<DateTime>(updatedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = i0.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncRegistriesCompanion(')
          ..write('id: $id, ')
          ..write('modelRecordId: $modelRecordId, ')
          ..write('modelName: $modelName, ')
          ..write('backendId: $backendId, ')
          ..write('recordDeletedAt: $recordDeletedAt, ')
          ..write('recordWriteDate: $recordWriteDate, ')
          ..write('pendingSync: $pendingSync, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}
