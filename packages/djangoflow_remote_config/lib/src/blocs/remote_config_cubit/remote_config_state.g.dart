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
    _$RemoteConfigStateImpl instance) {
  final val = <String, dynamic>{
    'is_loading': instance.isLoading,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('config', instance.config);
  writeNotNull('last_update', instance.lastUpdate?.toIso8601String());
  return val;
}
