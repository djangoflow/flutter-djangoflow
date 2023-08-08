// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUserDeviceRequest _$PatchedUserDeviceRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedUserDeviceRequest',
      json,
      ($checkedConvert) {
        final val = PatchedUserDeviceRequest(
          name: $checkedConvert('name', (v) => v as String?),
          registrationId:
              $checkedConvert('registration_id', (v) => v as String?),
          deviceId: $checkedConvert('device_id', (v) => v as String?),
          active: $checkedConvert('active', (v) => v as bool? ?? true),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$TypeEnumEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'registrationId': 'registration_id',
        'deviceId': 'device_id'
      },
    );

Map<String, dynamic> _$PatchedUserDeviceRequestToJson(
    PatchedUserDeviceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('registration_id', instance.registrationId);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('active', instance.active);
  writeNotNull('type', _$TypeEnumEnumMap[instance.type]);
  return val;
}

const _$TypeEnumEnumMap = {
  TypeEnum.ios: 'ios',
  TypeEnum.android: 'android',
  TypeEnum.web: 'web',
};
