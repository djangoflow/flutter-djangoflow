// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequest _$ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChangePasswordRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['old_password', 'new_password'],
        );
        final val = ChangePasswordRequest(
          oldPassword: $checkedConvert('old_password', (v) => v as String),
          newPassword: $checkedConvert('new_password', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'oldPassword': 'old_password',
        'newPassword': 'new_password'
      },
    );

Map<String, dynamic> _$ChangePasswordRequestToJson(
        ChangePasswordRequest instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
