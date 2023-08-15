// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlink_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnlinkRequest _$UnlinkRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UnlinkRequest',
      json,
      ($checkedConvert) {
        final val = UnlinkRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'firstName': 'first_name', 'lastName': 'last_name'},
    );

Map<String, dynamic> _$UnlinkRequestToJson(UnlinkRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('otp', instance.otp);
  writeNotNull('password', instance.password);
  return val;
}
