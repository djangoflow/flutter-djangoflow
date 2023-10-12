// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoteConfigStateImpl _$$RemoteConfigStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoteConfigStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      config: (json['config'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$$RemoteConfigStateImplToJson(
        _$RemoteConfigStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'config': instance.config,
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
    };
