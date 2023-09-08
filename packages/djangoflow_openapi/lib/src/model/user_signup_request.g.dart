// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignupRequest _$UserSignupRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserSignupRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['email'],
        );
        final val = UserSignupRequest(
          email: $checkedConvert('email', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserSignupRequestToJson(UserSignupRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
