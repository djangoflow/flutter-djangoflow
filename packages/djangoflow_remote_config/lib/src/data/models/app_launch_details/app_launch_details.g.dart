// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_launch_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppLaunchDetailsImpl _$$AppLaunchDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AppLaunchDetailsImpl(
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

Map<String, dynamic> _$$AppLaunchDetailsImplToJson(
        _$AppLaunchDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.brand?.toJson() case final value?) 'brand': value,
      if (instance.appVersion?.toJson() case final value?) 'app_version': value,
      if (instance.updates?.toJson() case final value?) 'updates': value,
    };

_$BrandDetailsImpl _$$BrandDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BrandDetailsImpl(
      theme: json['theme'] == null
          ? null
          : ThemeDetails.fromJson(json['theme'] as Map<String, dynamic>),
      logo: json['logo'] == null
          ? null
          : LogoDetails.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandDetailsImplToJson(_$BrandDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.theme?.toJson() case final value?) 'theme': value,
      if (instance.logo?.toJson() case final value?) 'logo': value,
    };

_$ThemeDetailsImpl _$$ThemeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ThemeDetailsImpl(
      lightTheme: json['light_theme'] as Map<String, dynamic>?,
      darkTheme: json['dark_theme'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ThemeDetailsImplToJson(_$ThemeDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.lightTheme case final value?) 'light_theme': value,
      if (instance.darkTheme case final value?) 'dark_theme': value,
    };

_$UpdatesDetailsImpl _$$UpdatesDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UpdatesDetailsImpl(
      parts: (json['parts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$$UpdatesDetailsImplToJson(
        _$UpdatesDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.parts?.map((k, e) => MapEntry(k, e?.toIso8601String()))
          case final value?)
        'parts': value,
    };

_$LogoDetailsImpl _$$LogoDetailsImplFromJson(Map<String, dynamic> json) =>
    _$LogoDetailsImpl(
      large: json['large'] as String?,
      small: json['small'] as String?,
    );

Map<String, dynamic> _$$LogoDetailsImplToJson(_$LogoDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.large case final value?) 'large': value,
      if (instance.small case final value?) 'small': value,
    };

_$VersionDetailsImpl _$$VersionDetailsImplFromJson(Map<String, dynamic> json) =>
    _$VersionDetailsImpl(
      latest: json['latest'] as String?,
      required: json['required'] as String?,
    );

Map<String, dynamic> _$$VersionDetailsImplToJson(
        _$VersionDetailsImpl instance) =>
    <String, dynamic>{
      if (instance.latest case final value?) 'latest': value,
      if (instance.required case final value?) 'required': value,
    };
