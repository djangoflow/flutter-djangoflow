// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Unlink _$UnlinkFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Unlink',
      json,
      ($checkedConvert) {
        final val = Unlink(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'firstName': 'first_name', 'lastName': 'last_name'},
    );

Map<String, dynamic> _$UnlinkToJson(Unlink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  return val;
}
