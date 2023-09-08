// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_device_confirm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPDeviceConfirmRequest _$OTPDeviceConfirmRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPDeviceConfirmRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['code'],
        );
        final val = OTPDeviceConfirmRequest(
          code: $checkedConvert('code', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPDeviceConfirmRequestToJson(
        OTPDeviceConfirmRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
    };
