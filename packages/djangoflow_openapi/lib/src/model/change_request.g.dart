// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeRequest _$ChangeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChangeRequest',
      json,
      ($checkedConvert) {
        final val = ChangeRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          username: $checkedConvert('username', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'firstName': 'first_name', 'lastName': 'last_name'},
    );

Map<String, dynamic> _$ChangeRequestToJson(ChangeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('username', instance.username);
  writeNotNull('otp', instance.otp);
  writeNotNull('password', instance.password);
  return val;
}
