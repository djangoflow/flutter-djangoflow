// lib/core/models/drift_model.dart
import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';
import 'package:drift/drift.dart';

abstract class DriftModel extends SyncModel {
  UpdateCompanion toCompanion();
}
