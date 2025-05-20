// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_launch_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppLaunchDetails _$AppLaunchDetailsFromJson(Map<String, dynamic> json) =>
    _AppLaunchDetails(
      brand: json['brand'] == null
          ? null
          : BrandDetails.fromJson(json['brand'] as Map<String, dynamic>),
      appVersion: json['app_version'] == null
          ? null
          : VersionDetails.fromJson(
              json['app_version'] as Map<String, dynamic>),
      updates: json['updates'] == null
          ? null
          : UpdatesDetails.fromJson(json['updates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppLaunchDetailsToJson(_AppLaunchDetails instance) =>
    <String, dynamic>{
      if (instance.brand?.toJson() case final value?) 'brand': value,
      if (instance.appVersion?.toJson() case final value?) 'app_version': value,
      if (instance.updates?.toJson() case final value?) 'updates': value,
    };

_BrandDetails _$BrandDetailsFromJson(Map<String, dynamic> json) =>
    _BrandDetails(
      theme: json['theme'] == null
          ? null
          : ThemeDetails.fromJson(json['theme'] as Map<String, dynamic>),
      logo: json['logo'] == null
          ? null
          : LogoDetails.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BrandDetailsToJson(_BrandDetails instance) =>
    <String, dynamic>{
      if (instance.theme?.toJson() case final value?) 'theme': value,
      if (instance.logo?.toJson() case final value?) 'logo': value,
    };

_ThemeDetails _$ThemeDetailsFromJson(Map<String, dynamic> json) =>
    _ThemeDetails(
      lightTheme: json['light_theme'] as Map<String, dynamic>?,
      darkTheme: json['dark_theme'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ThemeDetailsToJson(_ThemeDetails instance) =>
    <String, dynamic>{
      if (instance.lightTheme case final value?) 'light_theme': value,
      if (instance.darkTheme case final value?) 'dark_theme': value,
    };

_UpdatesDetails _$UpdatesDetailsFromJson(Map<String, dynamic> json) =>
    _UpdatesDetails(
      parts: (json['parts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$UpdatesDetailsToJson(_UpdatesDetails instance) =>
    <String, dynamic>{
      if (instance.parts?.map((k, e) => MapEntry(k, e?.toIso8601String()))
          case final value?)
        'parts': value,
    };

_LogoDetails _$LogoDetailsFromJson(Map<String, dynamic> json) => _LogoDetails(
      large: json['large'] as String?,
      small: json['small'] as String?,
    );

Map<String, dynamic> _$LogoDetailsToJson(_LogoDetails instance) =>
    <String, dynamic>{
      if (instance.large case final value?) 'large': value,
      if (instance.small case final value?) 'small': value,
    };

_VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) =>
    _VersionDetails(
      latest: json['latest'] as String?,
      required: json['required'] as String?,
    );

Map<String, dynamic> _$VersionDetailsToJson(_VersionDetails instance) =>
    <String, dynamic>{
      if (instance.latest case final value?) 'latest': value,
      if (instance.required case final value?) 'required': value,
    };
