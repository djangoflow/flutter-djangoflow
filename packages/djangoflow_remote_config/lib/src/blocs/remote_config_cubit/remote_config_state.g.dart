// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoteConfigStateImpl _$$RemoteConfigStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoteConfigStateImpl(
      isLoading: json['is_loading'] as bool? ?? false,
      config: (json['config'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      lastUpdate: json['last_update'] == null
          ? null
          : DateTime.parse(json['last_update'] as String),
    );

Map<String, dynamic> _$$RemoteConfigStateImplToJson(
        _$RemoteConfigStateImpl instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      if (instance.config case final value?) 'config': value,
      if (instance.lastUpdate?.toIso8601String() case final value?)
        'last_update': value,
    };
