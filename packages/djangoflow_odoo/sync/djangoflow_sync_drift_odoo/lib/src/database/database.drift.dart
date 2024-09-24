// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:djangoflow_sync_drift_odoo/src/database/database.drift.dart'
    as i1;
import 'package:djangoflow_sync_drift_odoo/src/database/database.dart' as i2;
import 'package:drift/src/runtime/query_builder/query_builder.dart' as i3;
import 'package:drift/internal/modular.dart' as i4;

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
      hasAutoIncrement: true,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          i0.GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
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
  Set<i0.GeneratedColumn> get $primaryKey => {id};
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
  const BaseTableCompanion({
    this.id = const i0.Value.absent(),
    this.createDate = const i0.Value.absent(),
    this.writeDate = const i0.Value.absent(),
    this.isMarkedAsDeleted = const i0.Value.absent(),
    this.backendId = const i0.Value.absent(),
  });
  BaseTableCompanion.insert({
    this.id = const i0.Value.absent(),
    required DateTime createDate,
    required DateTime writeDate,
    this.isMarkedAsDeleted = const i0.Value.absent(),
    required String backendId,
  })  : createDate = i0.Value(createDate),
        writeDate = i0.Value(writeDate),
        backendId = i0.Value(backendId);
  static i0.Insertable<i1.BaseTableData> custom({
    i0.Expression<int>? id,
    i0.Expression<DateTime>? createDate,
    i0.Expression<DateTime>? writeDate,
    i0.Expression<bool>? isMarkedAsDeleted,
    i0.Expression<String>? backendId,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (createDate != null) 'create_date': createDate,
      if (writeDate != null) 'write_date': writeDate,
      if (isMarkedAsDeleted != null) 'is_marked_as_deleted': isMarkedAsDeleted,
      if (backendId != null) 'backend_id': backendId,
    });
  }

  i1.BaseTableCompanion copyWith(
      {i0.Value<int>? id,
      i0.Value<DateTime>? createDate,
      i0.Value<DateTime>? writeDate,
      i0.Value<bool>? isMarkedAsDeleted,
      i0.Value<String>? backendId}) {
    return i1.BaseTableCompanion(
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      writeDate: writeDate ?? this.writeDate,
      isMarkedAsDeleted: isMarkedAsDeleted ?? this.isMarkedAsDeleted,
      backendId: backendId ?? this.backendId,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BaseTableCompanion(')
          ..write('id: $id, ')
          ..write('createDate: $createDate, ')
          ..write('writeDate: $writeDate, ')
          ..write('isMarkedAsDeleted: $isMarkedAsDeleted, ')
          ..write('backendId: $backendId')
          ..write(')'))
        .toString();
  }
}

typedef $$BaseTableTableCreateCompanionBuilder = i1.BaseTableCompanion
    Function({
  i0.Value<int> id,
  required DateTime createDate,
  required DateTime writeDate,
  i0.Value<bool> isMarkedAsDeleted,
  required String backendId,
});
typedef $$BaseTableTableUpdateCompanionBuilder = i1.BaseTableCompanion
    Function({
  i0.Value<int> id,
  i0.Value<DateTime> createDate,
  i0.Value<DateTime> writeDate,
  i0.Value<bool> isMarkedAsDeleted,
  i0.Value<String> backendId,
});

class $$BaseTableTableFilterComposer
    extends i0.FilterComposer<i0.GeneratedDatabase, i1.$BaseTableTable> {
  $$BaseTableTableFilterComposer(super.$state);
  i0.ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<DateTime> get createDate => $state.composableBuilder(
      column: $state.table.createDate,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<DateTime> get writeDate => $state.composableBuilder(
      column: $state.table.writeDate,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<bool> get isMarkedAsDeleted => $state.composableBuilder(
      column: $state.table.isMarkedAsDeleted,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i1.$$SyncBackendsTableFilterComposer get backendId {
    final i1.$$SyncBackendsTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.backendId,
            referencedTable: i4.ReadDatabaseContainer($state.db)
                .resultSet<i1.$SyncBackendsTable>('sync_backends'),
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                i1.$$SyncBackendsTableFilterComposer(i0.ComposerState(
                    $state.db,
                    i4.ReadDatabaseContainer($state.db)
                        .resultSet<i1.$SyncBackendsTable>('sync_backends'),
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$BaseTableTableOrderingComposer
    extends i0.OrderingComposer<i0.GeneratedDatabase, i1.$BaseTableTable> {
  $$BaseTableTableOrderingComposer(super.$state);
  i0.ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<DateTime> get createDate => $state.composableBuilder(
      column: $state.table.createDate,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<DateTime> get writeDate => $state.composableBuilder(
      column: $state.table.writeDate,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<bool> get isMarkedAsDeleted => $state.composableBuilder(
      column: $state.table.isMarkedAsDeleted,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i1.$$SyncBackendsTableOrderingComposer get backendId {
    final i1.$$SyncBackendsTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.backendId,
            referencedTable: i4.ReadDatabaseContainer($state.db)
                .resultSet<i1.$SyncBackendsTable>('sync_backends'),
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                i1.$$SyncBackendsTableOrderingComposer(i0.ComposerState(
                    $state.db,
                    i4.ReadDatabaseContainer($state.db)
                        .resultSet<i1.$SyncBackendsTable>('sync_backends'),
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$BaseTableTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$BaseTableTable,
    i1.BaseTableData,
    i1.$$BaseTableTableFilterComposer,
    i1.$$BaseTableTableOrderingComposer,
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
          filteringComposer:
              i1.$$BaseTableTableFilterComposer(i0.ComposerState(db, table)),
          orderingComposer:
              i1.$$BaseTableTableOrderingComposer(i0.ComposerState(db, table)),
          updateCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            i0.Value<DateTime> createDate = const i0.Value.absent(),
            i0.Value<DateTime> writeDate = const i0.Value.absent(),
            i0.Value<bool> isMarkedAsDeleted = const i0.Value.absent(),
            i0.Value<String> backendId = const i0.Value.absent(),
          }) =>
              i1.BaseTableCompanion(
            id: id,
            createDate: createDate,
            writeDate: writeDate,
            isMarkedAsDeleted: isMarkedAsDeleted,
            backendId: backendId,
          ),
          createCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            required DateTime createDate,
            required DateTime writeDate,
            i0.Value<bool> isMarkedAsDeleted = const i0.Value.absent(),
            required String backendId,
          }) =>
              i1.BaseTableCompanion.insert(
            id: id,
            createDate: createDate,
            writeDate: writeDate,
            isMarkedAsDeleted: isMarkedAsDeleted,
            backendId: backendId,
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
    $$BaseTableTableCreateCompanionBuilder,
    $$BaseTableTableUpdateCompanionBuilder,
    (
      i1.BaseTableData,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$BaseTableTable,
          i1.BaseTableData>
    ),
    i1.BaseTableData,
    i0.PrefetchHooks Function({bool backendId})>;

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
  @override
  List<i0.GeneratedColumn> get $columns => [id, type];
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
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.SyncBackend map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.SyncBackend(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}type'])!,
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
  const SyncBackend({required this.id, required this.type});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<String>(id);
    map['type'] = i0.Variable<String>(type);
    return map;
  }

  i1.SyncBackendsCompanion toCompanion(bool nullToAbsent) {
    return i1.SyncBackendsCompanion(
      id: i0.Value(id),
      type: i0.Value(type),
    );
  }

  factory SyncBackend.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return SyncBackend(
      id: serializer.fromJson<String>(json['id']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer.toJson<String>(type),
    };
  }

  i1.SyncBackend copyWith({String? id, String? type}) => i1.SyncBackend(
        id: id ?? this.id,
        type: type ?? this.type,
      );
  SyncBackend copyWithCompanion(i1.SyncBackendsCompanion data) {
    return SyncBackend(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncBackend(')
          ..write('id: $id, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.SyncBackend &&
          other.id == this.id &&
          other.type == this.type);
}

class SyncBackendsCompanion extends i0.UpdateCompanion<i1.SyncBackend> {
  final i0.Value<String> id;
  final i0.Value<String> type;
  final i0.Value<int> rowid;
  const SyncBackendsCompanion({
    this.id = const i0.Value.absent(),
    this.type = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  SyncBackendsCompanion.insert({
    required String id,
    required String type,
    this.rowid = const i0.Value.absent(),
  })  : id = i0.Value(id),
        type = i0.Value(type);
  static i0.Insertable<i1.SyncBackend> custom({
    i0.Expression<String>? id,
    i0.Expression<String>? type,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.SyncBackendsCompanion copyWith(
      {i0.Value<String>? id, i0.Value<String>? type, i0.Value<int>? rowid}) {
    return i1.SyncBackendsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
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
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

typedef $$SyncBackendsTableCreateCompanionBuilder = i1.SyncBackendsCompanion
    Function({
  required String id,
  required String type,
  i0.Value<int> rowid,
});
typedef $$SyncBackendsTableUpdateCompanionBuilder = i1.SyncBackendsCompanion
    Function({
  i0.Value<String> id,
  i0.Value<String> type,
  i0.Value<int> rowid,
});

class $$SyncBackendsTableFilterComposer
    extends i0.FilterComposer<i0.GeneratedDatabase, i1.$SyncBackendsTable> {
  $$SyncBackendsTableFilterComposer(super.$state);
  i0.ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SyncBackendsTableOrderingComposer
    extends i0.OrderingComposer<i0.GeneratedDatabase, i1.$SyncBackendsTable> {
  $$SyncBackendsTableOrderingComposer(super.$state);
  i0.ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$SyncBackendsTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$SyncBackendsTable,
    i1.SyncBackend,
    i1.$$SyncBackendsTableFilterComposer,
    i1.$$SyncBackendsTableOrderingComposer,
    $$SyncBackendsTableCreateCompanionBuilder,
    $$SyncBackendsTableUpdateCompanionBuilder,
    (
      i1.SyncBackend,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncBackendsTable,
          i1.SyncBackend>
    ),
    i1.SyncBackend,
    i0.PrefetchHooks Function()> {
  $$SyncBackendsTableTableManager(
      i0.GeneratedDatabase db, i1.$SyncBackendsTable table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              i1.$$SyncBackendsTableFilterComposer(i0.ComposerState(db, table)),
          orderingComposer: i1
              .$$SyncBackendsTableOrderingComposer(i0.ComposerState(db, table)),
          updateCompanionCallback: ({
            i0.Value<String> id = const i0.Value.absent(),
            i0.Value<String> type = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.SyncBackendsCompanion(
            id: id,
            type: type,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String type,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.SyncBackendsCompanion.insert(
            id: id,
            type: type,
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
    $$SyncBackendsTableCreateCompanionBuilder,
    $$SyncBackendsTableUpdateCompanionBuilder,
    (
      i1.SyncBackend,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncBackendsTable,
          i1.SyncBackend>
    ),
    i1.SyncBackend,
    i0.PrefetchHooks Function()>;

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
    extends i0.FilterComposer<i0.GeneratedDatabase, i1.$SyncRegistriesTable> {
  $$SyncRegistriesTableFilterComposer(super.$state);
  i0.ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<int> get modelRecordId => $state.composableBuilder(
      column: $state.table.modelRecordId,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<String> get modelName => $state.composableBuilder(
      column: $state.table.modelName,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<DateTime> get recordDeletedAt => $state.composableBuilder(
      column: $state.table.recordDeletedAt,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<DateTime> get recordWriteDate => $state.composableBuilder(
      column: $state.table.recordWriteDate,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<bool> get pendingSync => $state.composableBuilder(
      column: $state.table.pendingSync,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i1.$$SyncBackendsTableFilterComposer get backendId {
    final i1.$$SyncBackendsTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.backendId,
            referencedTable: i4.ReadDatabaseContainer($state.db)
                .resultSet<i1.$SyncBackendsTable>('sync_backends'),
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                i1.$$SyncBackendsTableFilterComposer(i0.ComposerState(
                    $state.db,
                    i4.ReadDatabaseContainer($state.db)
                        .resultSet<i1.$SyncBackendsTable>('sync_backends'),
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$SyncRegistriesTableOrderingComposer
    extends i0.OrderingComposer<i0.GeneratedDatabase, i1.$SyncRegistriesTable> {
  $$SyncRegistriesTableOrderingComposer(super.$state);
  i0.ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<int> get modelRecordId => $state.composableBuilder(
      column: $state.table.modelRecordId,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<String> get modelName => $state.composableBuilder(
      column: $state.table.modelName,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<DateTime> get recordDeletedAt => $state.composableBuilder(
      column: $state.table.recordDeletedAt,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<DateTime> get recordWriteDate => $state.composableBuilder(
      column: $state.table.recordWriteDate,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<bool> get pendingSync => $state.composableBuilder(
      column: $state.table.pendingSync,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i1.$$SyncBackendsTableOrderingComposer get backendId {
    final i1.$$SyncBackendsTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.backendId,
            referencedTable: i4.ReadDatabaseContainer($state.db)
                .resultSet<i1.$SyncBackendsTable>('sync_backends'),
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                i1.$$SyncBackendsTableOrderingComposer(i0.ComposerState(
                    $state.db,
                    i4.ReadDatabaseContainer($state.db)
                        .resultSet<i1.$SyncBackendsTable>('sync_backends'),
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$SyncRegistriesTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$SyncRegistriesTable,
    i1.SyncRegistry,
    i1.$$SyncRegistriesTableFilterComposer,
    i1.$$SyncRegistriesTableOrderingComposer,
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
          filteringComposer: i1
              .$$SyncRegistriesTableFilterComposer(i0.ComposerState(db, table)),
          orderingComposer: i1.$$SyncRegistriesTableOrderingComposer(
              i0.ComposerState(db, table)),
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
    $$SyncRegistriesTableCreateCompanionBuilder,
    $$SyncRegistriesTableUpdateCompanionBuilder,
    (
      i1.SyncRegistry,
      i0.BaseReferences<i0.GeneratedDatabase, i1.$SyncRegistriesTable,
          i1.SyncRegistry>
    ),
    i1.SyncRegistry,
    i0.PrefetchHooks Function({bool backendId})>;
