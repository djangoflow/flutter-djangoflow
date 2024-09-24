# djangoflow_sync_foundation

A Flutter package providing the foundation for offline-first, synchronized data management in Flutter applications.

## Features

- Abstract interfaces for sync operations
- Base classes for synchronized models
- Utility functions for ID generation and conflict resolution
- Logging utilities for sync operations

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_sync_foundation: ^0.1.0
```

## Usage

```dart
import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';

// Create a synchronized model
class MyModel extends SyncModel {
  // Implement required methods
}

// Create a repository
class MyRepository extends SyncRepository<MyModel> {
  // Implement required methods
}

// Use in a BLoC
class MyBloc extends SyncBloc<MyModel> {
  MyBloc(MyRepository repository) : super(repository);
}
```

## Notes

- This package provides the core abstractions and utilities for building synchronized Flutter apps
- Designed to be used in conjunction with specific backend implementations (e.g., `djangoflow_sync_drift_odoo`)
