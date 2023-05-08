// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh_sliding_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRefreshSlidingRequest _$TokenRefreshSlidingRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenRefreshSlidingRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['token'],
        );
        final val = TokenRefreshSlidingRequest(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenRefreshSlidingRequestToJson(
        TokenRefreshSlidingRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
