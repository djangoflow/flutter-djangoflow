// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPDevice _$OTPDeviceFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OTPDevice',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = OTPDevice(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$OTPDeviceTypeEnumEnumMap, v)),
          confirmed: $checkedConvert('confirmed', (v) => v as bool?),
          key: $checkedConvert('key', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPDeviceToJson(OTPDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['type'] = _$OTPDeviceTypeEnumEnumMap[instance.type]!;
  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('key', instance.key);
  return val;
}

const _$OTPDeviceTypeEnumEnumMap = {
  OTPDeviceTypeEnum.email: 'email',
  OTPDeviceTypeEnum.totp: 'totp',
  OTPDeviceTypeEnum.sms: 'sms',
};
