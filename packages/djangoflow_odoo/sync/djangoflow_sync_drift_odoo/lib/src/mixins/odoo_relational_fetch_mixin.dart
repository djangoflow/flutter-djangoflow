import 'package:djangoflow_sync_foundation/djangoflow_sync_foundation.dart';

import '../backends/odoo_backend.dart';

mixin OdooRelationalFetchMixin<T extends SyncModel> on OdooBackend<T> {
  Map<String, OdooBackend> get relationalBackends;
  Map<String, String> get relationalFields;

  Future<Map<String, dynamic>> getRelatedData(T item) async {
    final relatedData = <String, dynamic>{};

    for (final entry in relationalFields.entries) {
      final fieldName = entry.key;
      final relatedModelName = entry.value;
      final relatedBackend = relationalBackends[relatedModelName];

      if (relatedBackend != null) {
        final relatedId = getRelationalId(item, fieldName);
        if (relatedId != null) {
          final relatedItem = await relatedBackend.getById(relatedId);
          if (relatedItem != null) {
            relatedData[fieldName] = relatedItem.toJson();
          }
        }
      }
    }

    return relatedData;
  }

  int? getRelationalId(T item, String fieldName);

  T mergeRelatedData(T item, Map<String, dynamic> relatedData);

  int? extractRelationalId(dynamic fieldValue) {
    if (fieldValue is List && fieldValue.isNotEmpty) {
      return fieldValue[0] as int;
    } else if (fieldValue is int) {
      return fieldValue;
    }
    return null;
  }

  Map<String, dynamic> processRelationalFields(Map<String, dynamic> json) {
    final processedJson = Map<String, dynamic>.from(json);
    for (final entry in relationalFields.entries) {
      final fieldName = entry.key;
      if (json.containsKey(fieldName)) {
        processedJson[fieldName] = extractRelationalId(json[fieldName]);
      }
    }
    return processedJson;
  }
}
