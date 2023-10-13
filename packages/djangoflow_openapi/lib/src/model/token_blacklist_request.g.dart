// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_blacklist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenBlacklistRequest _$TokenBlacklistRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenBlacklistRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['refresh'],
        );
        final val = TokenBlacklistRequest(
          refresh: $checkedConvert('refresh', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenBlacklistRequestToJson(
        TokenBlacklistRequest instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
    };
