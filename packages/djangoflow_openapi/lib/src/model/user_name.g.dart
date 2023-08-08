// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserName _$UserNameFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserName',
      json,
      ($checkedConvert) {
        final val = UserName(
          id: $checkedConvert('id', (v) => v as String?),
          firstName: $checkedConvert('first_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'firstName': 'first_name'},
    );

Map<String, dynamic> _$UserNameToJson(UserName instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('first_name', instance.firstName);
  return val;
}
