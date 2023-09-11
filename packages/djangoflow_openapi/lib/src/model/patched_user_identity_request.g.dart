// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_identity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUserIdentityRequest _$PatchedUserIdentityRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedUserIdentityRequest',
      json,
      ($checkedConvert) {
        final val = PatchedUserIdentityRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'firstName': 'first_name', 'lastName': 'last_name'},
    );

Map<String, dynamic> _$PatchedUserIdentityRequestToJson(
    PatchedUserIdentityRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('password', instance.password);
  writeNotNull('email', instance.email);
  return val;
}
