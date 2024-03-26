// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteConfig _$RemoteConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RemoteConfig',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['part'],
        );
        final val = RemoteConfig(
          part_: $checkedConvert(
              'part',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
        );
        return val;
      },
      fieldKeyMap: const {'part_': 'part'},
    );

Map<String, dynamic> _$RemoteConfigToJson(RemoteConfig instance) =>
    <String, dynamic>{
      'part': instance.part_,
    };
