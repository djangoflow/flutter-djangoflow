// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPDeviceRequest _$OTPDeviceRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPDeviceRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = OTPDeviceRequest(
          name: $checkedConvert('name', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$OTPDeviceTypeEnumEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPDeviceRequestToJson(OTPDeviceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['type'] = _$OTPDeviceTypeEnumEnumMap[instance.type]!;
  return val;
}

const _$OTPDeviceTypeEnumEnumMap = {
  OTPDeviceTypeEnum.email: 'email',
  OTPDeviceTypeEnum.totp: 'totp',
  OTPDeviceTypeEnum.sms: 'sms',
};
