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
      updates: json['updates'] == null
          ? null
          : UpdatesDetails.fromJson(json['updates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppLaunchDetailsImplToJson(
    _$AppLaunchDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand?.toJson());
  writeNotNull('updates', instance.updates?.toJson());
  return val;
}

_$BrandDetailsImpl _$$BrandDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BrandDetailsImpl(
      theme: json['theme'] == null
          ? null
          : ThemeDetails.fromJson(json['theme'] as Map<String, dynamic>),
      logo: json['logo'] == null
          ? null
          : LogoDetails.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandDetailsImplToJson(_$BrandDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('theme', instance.theme?.toJson());
  writeNotNull('logo', instance.logo?.toJson());
  return val;
}

_$ThemeDetailsImpl _$$ThemeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ThemeDetailsImpl(
      lightTheme: json['light_theme'] as Map<String, dynamic>?,
      darkTheme: json['dark_theme'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ThemeDetailsImplToJson(_$ThemeDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('light_theme', instance.lightTheme);
  writeNotNull('dark_theme', instance.darkTheme);
  return val;
}

_$UpdatesDetailsImpl _$$UpdatesDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UpdatesDetailsImpl(
      parts: (json['parts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$$UpdatesDetailsImplToJson(
    _$UpdatesDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parts',
      instance.parts?.map((k, e) => MapEntry(k, e?.toIso8601String())));
  return val;
}

_$LogoDetailsImpl _$$LogoDetailsImplFromJson(Map<String, dynamic> json) =>
    _$LogoDetailsImpl(
      large: json['large'] as String?,
      small: json['small'] as String?,
    );

Map<String, dynamic> _$$LogoDetailsImplToJson(_$LogoDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('large', instance.large);
  writeNotNull('small', instance.small);
  return val;
}
