// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteConfigState _$RemoteConfigStateFromJson(Map<String, dynamic> json) =>
    _RemoteConfigState(
      isLoading: json['is_loading'] as bool? ?? false,
      config: (json['config'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      lastUpdate: json['last_update'] == null
          ? null
          : DateTime.parse(json['last_update'] as String),
    );

Map<String, dynamic> _$RemoteConfigStateToJson(_RemoteConfigState instance) =>
    <String, dynamic>{
      'is_loading': instance.isLoading,
      if (instance.config case final value?) 'config': value,
      if (instance.lastUpdate?.toIso8601String() case final value?)
        'last_update': value,
    };
