// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUserRequest _$PatchedUserRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedUserRequest',
      json,
      ($checkedConvert) {
        final val = PatchedUserRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'phoneNumber': 'phone_number'
      },
    );

Map<String, dynamic> _$PatchedUserRequestToJson(PatchedUserRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('phone_number', instance.phoneNumber);
  return val;
}
