// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      firstRun: json['firstRun'] as bool? ?? true,
      environment:
          $enumDecodeNullable(_$AppEnvironmentEnumMap, json['environment']) ??
              AppEnvironment.live,
      locale: json['locale'] as String? ?? 'en',
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.light,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'firstRun': instance.firstRun,
      'environment': _$AppEnvironmentEnumMap[instance.environment]!,
      'locale': instance.locale,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$AppEnvironmentEnumMap = {
  AppEnvironment.live: 'live',
  AppEnvironment.sandbox: 'sandbox',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
