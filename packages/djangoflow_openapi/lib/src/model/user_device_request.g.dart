// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDeviceRequest _$UserDeviceRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserDeviceRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['registration_id', 'type'],
        );
        final val = UserDeviceRequest(
          name: $checkedConvert('name', (v) => v as String?),
          registrationId:
              $checkedConvert('registration_id', (v) => v as String),
          deviceId: $checkedConvert('device_id', (v) => v as String?),
          active: $checkedConvert('active', (v) => v as bool? ?? true),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$UserDeviceTypeEnumEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'registrationId': 'registration_id',
        'deviceId': 'device_id'
      },
    );

Map<String, dynamic> _$UserDeviceRequestToJson(UserDeviceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['registration_id'] = instance.registrationId;
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('active', instance.active);
  val['type'] = _$UserDeviceTypeEnumEnumMap[instance.type]!;
  return val;
}

const _$UserDeviceTypeEnumEnumMap = {
  UserDeviceTypeEnum.ios: 'ios',
  UserDeviceTypeEnum.android: 'android',
  UserDeviceTypeEnum.web: 'web',
};
