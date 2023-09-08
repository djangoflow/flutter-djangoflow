// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignup _$UserSignupFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserSignup',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['email'],
        );
        final val = UserSignup(
          email: $checkedConvert('email', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserSignupToJson(UserSignup instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
