// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Error',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message', 'code'],
        );
        final val = Error(
          message: $checkedConvert('message', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          field: $checkedConvert('field', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{
    'message': instance.message,
    'code': instance.code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', instance.field);
  return val;
}
