// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      loading: json['loading'] as bool? ?? false,
      firstRun: json['firstRun'] as bool? ?? true,
      environment: json['environment'] as String? ?? 'production',
      language: json['language'] as String? ?? 'en',
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'firstRun': instance.firstRun,
      'environment': instance.environment,
      'language': instance.language,
    };
