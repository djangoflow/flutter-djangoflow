// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenVerifyRequest _$TokenVerifyRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenVerifyRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['token'],
        );
        final val = TokenVerifyRequest(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenVerifyRequestToJson(TokenVerifyRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
