// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDevice _$UserDeviceFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserDevice',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['registration_id', 'type'],
        );
        final val = UserDevice(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          registrationId:
              $checkedConvert('registration_id', (v) => v as String),
          deviceId: $checkedConvert('device_id', (v) => v as String?),
          active: $checkedConvert('active', (v) => v as bool? ?? true),
          dateCreated: $checkedConvert('date_created',
              (v) => v == null ? null : DateTime.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$UserDeviceTypeEnumEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'registrationId': 'registration_id',
        'deviceId': 'device_id',
        'dateCreated': 'date_created'
      },
    );

Map<String, dynamic> _$UserDeviceToJson(UserDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['registration_id'] = instance.registrationId;
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('active', instance.active);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  val['type'] = _$UserDeviceTypeEnumEnumMap[instance.type]!;
  return val;
}

const _$UserDeviceTypeEnumEnumMap = {
  UserDeviceTypeEnum.ios: 'ios',
  UserDeviceTypeEnum.android: 'android',
  UserDeviceTypeEnum.web: 'web',
};
