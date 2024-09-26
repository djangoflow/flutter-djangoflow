import 'package:drift/drift.dart';

class BaseTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get createDate => dateTime()();
  DateTimeColumn get writeDate => dateTime()();
  BoolColumn get isMarkedAsDeleted =>
      boolean().withDefault(const Constant(false))();
  TextColumn get backendId => text().references(SyncBackends, #id)();
}

class SyncBackends extends Table {
  TextColumn get id => text()(); // Using text for more flexible IDs
  TextColumn get type => text()(); // Can be "odoo", "drift", etc.
  TextColumn get baseUrl => text()(); // Base URL for the backend

  @override
  Set<Column> get primaryKey =>
      {id, baseUrl}; // Composite primary key for uniqueness
}

@DataClassName('SyncRegistry')
class SyncRegistries extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get modelRecordId => integer()();
  TextColumn get modelName => text()();

  TextColumn get backendId =>
      text().references(SyncBackends, #id, onDelete: KeyAction.cascade)();

  DateTimeColumn get recordDeletedAt => dateTime().nullable()();
  DateTimeColumn get recordWriteDate => dateTime()();
  BoolColumn get pendingSync => boolean().withDefault(const Constant(false))();

  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  List<Set<Column>> get uniqueKeys => [
        {modelName, modelRecordId, backendId}
      ];
}
