// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRefreshRequest _$TokenRefreshRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenRefreshRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['refresh'],
        );
        final val = TokenRefreshRequest(
          refresh: $checkedConvert('refresh', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenRefreshRequestToJson(
        TokenRefreshRequest instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
    };
