# djangoflow_sync_drift_odoo

A Flutter package implementing offline-first, synchronized data management between local Drift databases and remote Odoo backends.

## Features

- Seamless synchronization between Drift and Odoo
- Offline-first data operations
- Conflict resolution strategies
- Support for relational data

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_sync_drift_odoo: ^0.1.0
  drift: ^2.20.0
  odoo_rpc: ^0.5.0
```

## Usage

```dart
import 'package:djangoflow_sync_drift_odoo/djangoflow_sync_drift_odoo.dart';

// Define your Drift database
@DriftDatabase(tables: [MyTable])
class MyDatabase extends _$MyDatabase {
  // Implement required methods
}

// Create Odoo and Drift backends
final odooBackend = OdooBackend<MyModel>(odooClient, connectionStateManager);
final driftBackend = DriftBackend<MyModel, MyTable, MyData>(database, table, backendId);

// Create a sync repository
final repository = MyRepository(
  odooBackend,
  driftBackend,
  DriftOdooSyncStrategy<MyModel, MyTable>(
    syncRegistryRepository,
    driftBackendId,
    odooBackendId,
    idMappingRepository,
  ),
);

// Use the repository in your app
final items = await repository.getAll();
```

## Notes

- Requires `drift` for local database operations
- Requires `odoo_rpc` for Odoo API communication
- Built on top of `djangoflow_sync_foundation`
