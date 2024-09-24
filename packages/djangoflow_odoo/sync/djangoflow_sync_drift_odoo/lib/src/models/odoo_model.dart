// lib/core/models/odoo_model.dart
import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';

abstract class OdooModel extends SyncModel {
  Map<String, dynamic> toOdooJson();
}
