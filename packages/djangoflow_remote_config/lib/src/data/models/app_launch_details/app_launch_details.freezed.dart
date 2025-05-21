// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_launch_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppLaunchDetails {
  BrandDetails? get brand;
  @JsonKey(name: 'app_version')
  VersionDetails? get appVersion;
  UpdatesDetails? get updates;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppLaunchDetailsCopyWith<AppLaunchDetails> get copyWith =>
      _$AppLaunchDetailsCopyWithImpl<AppLaunchDetails>(
          this as AppLaunchDetails, _$identity);

  /// Serializes this AppLaunchDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLaunchDetails &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.updates, updates) || other.updates == updates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brand, appVersion, updates);

  @override
  String toString() {
    return 'AppLaunchDetails(brand: $brand, appVersion: $appVersion, updates: $updates)';
  }
}

/// @nodoc
abstract mixin class $AppLaunchDetailsCopyWith<$Res> {
  factory $AppLaunchDetailsCopyWith(
          AppLaunchDetails value, $Res Function(AppLaunchDetails) _then) =
      _$AppLaunchDetailsCopyWithImpl;
  @useResult
  $Res call(
      {BrandDetails? brand,
      @JsonKey(name: 'app_version') VersionDetails? appVersion,
      UpdatesDetails? updates});

  $BrandDetailsCopyWith<$Res>? get brand;
  $VersionDetailsCopyWith<$Res>? get appVersion;
  $UpdatesDetailsCopyWith<$Res>? get updates;
}

/// @nodoc
class _$AppLaunchDetailsCopyWithImpl<$Res>
    implements $AppLaunchDetailsCopyWith<$Res> {
  _$AppLaunchDetailsCopyWithImpl(this._self, this._then);

  final AppLaunchDetails _self;
  final $Res Function(AppLaunchDetails) _then;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? appVersion = freezed,
    Object? updates = freezed,
  }) {
    return _then(_self.copyWith(
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDetails?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as VersionDetails?,
      updates: freezed == updates
          ? _self.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as UpdatesDetails?,
    ));
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandDetailsCopyWith<$Res>? get brand {
    if (_self.brand == null) {
      return null;
    }

    return $BrandDetailsCopyWith<$Res>(_self.brand!, (value) {
      return _then(_self.copyWith(brand: value));
    });
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionDetailsCopyWith<$Res>? get appVersion {
    if (_self.appVersion == null) {
      return null;
    }

    return $VersionDetailsCopyWith<$Res>(_self.appVersion!, (value) {
      return _then(_self.copyWith(appVersion: value));
    });
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdatesDetailsCopyWith<$Res>? get updates {
    if (_self.updates == null) {
      return null;
    }

    return $UpdatesDetailsCopyWith<$Res>(_self.updates!, (value) {
      return _then(_self.copyWith(updates: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AppLaunchDetails implements AppLaunchDetails {
  const _AppLaunchDetails(
      {this.brand,
      @JsonKey(name: 'app_version') this.appVersion,
      this.updates});
  factory _AppLaunchDetails.fromJson(Map<String, dynamic> json) =>
      _$AppLaunchDetailsFromJson(json);

  @override
  final BrandDetails? brand;
  @override
  @JsonKey(name: 'app_version')
  final VersionDetails? appVersion;
  @override
  final UpdatesDetails? updates;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppLaunchDetailsCopyWith<_AppLaunchDetails> get copyWith =>
      __$AppLaunchDetailsCopyWithImpl<_AppLaunchDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppLaunchDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppLaunchDetails &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.updates, updates) || other.updates == updates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brand, appVersion, updates);

  @override
  String toString() {
    return 'AppLaunchDetails(brand: $brand, appVersion: $appVersion, updates: $updates)';
  }
}

/// @nodoc
abstract mixin class _$AppLaunchDetailsCopyWith<$Res>
    implements $AppLaunchDetailsCopyWith<$Res> {
  factory _$AppLaunchDetailsCopyWith(
          _AppLaunchDetails value, $Res Function(_AppLaunchDetails) _then) =
      __$AppLaunchDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BrandDetails? brand,
      @JsonKey(name: 'app_version') VersionDetails? appVersion,
      UpdatesDetails? updates});

  @override
  $BrandDetailsCopyWith<$Res>? get brand;
  @override
  $VersionDetailsCopyWith<$Res>? get appVersion;
  @override
  $UpdatesDetailsCopyWith<$Res>? get updates;
}

/// @nodoc
class __$AppLaunchDetailsCopyWithImpl<$Res>
    implements _$AppLaunchDetailsCopyWith<$Res> {
  __$AppLaunchDetailsCopyWithImpl(this._self, this._then);

  final _AppLaunchDetails _self;
  final $Res Function(_AppLaunchDetails) _then;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? brand = freezed,
    Object? appVersion = freezed,
    Object? updates = freezed,
  }) {
    return _then(_AppLaunchDetails(
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDetails?,
      appVersion: freezed == appVersion
          ? _self.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as VersionDetails?,
      updates: freezed == updates
          ? _self.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as UpdatesDetails?,
    ));
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandDetailsCopyWith<$Res>? get brand {
    if (_self.brand == null) {
      return null;
    }

    return $BrandDetailsCopyWith<$Res>(_self.brand!, (value) {
      return _then(_self.copyWith(brand: value));
    });
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionDetailsCopyWith<$Res>? get appVersion {
    if (_self.appVersion == null) {
      return null;
    }

    return $VersionDetailsCopyWith<$Res>(_self.appVersion!, (value) {
      return _then(_self.copyWith(appVersion: value));
    });
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdatesDetailsCopyWith<$Res>? get updates {
    if (_self.updates == null) {
      return null;
    }

    return $UpdatesDetailsCopyWith<$Res>(_self.updates!, (value) {
      return _then(_self.copyWith(updates: value));
    });
  }
}

/// @nodoc
mixin _$BrandDetails {
  ThemeDetails? get theme;
  LogoDetails? get logo;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BrandDetailsCopyWith<BrandDetails> get copyWith =>
      _$BrandDetailsCopyWithImpl<BrandDetails>(
          this as BrandDetails, _$identity);

  /// Serializes this BrandDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BrandDetails &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, theme, logo);

  @override
  String toString() {
    return 'BrandDetails(theme: $theme, logo: $logo)';
  }
}

/// @nodoc
abstract mixin class $BrandDetailsCopyWith<$Res> {
  factory $BrandDetailsCopyWith(
          BrandDetails value, $Res Function(BrandDetails) _then) =
      _$BrandDetailsCopyWithImpl;
  @useResult
  $Res call({ThemeDetails? theme, LogoDetails? logo});

  $ThemeDetailsCopyWith<$Res>? get theme;
  $LogoDetailsCopyWith<$Res>? get logo;
}

/// @nodoc
class _$BrandDetailsCopyWithImpl<$Res> implements $BrandDetailsCopyWith<$Res> {
  _$BrandDetailsCopyWithImpl(this._self, this._then);

  final BrandDetails _self;
  final $Res Function(BrandDetails) _then;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? logo = freezed,
  }) {
    return _then(_self.copyWith(
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeDetails?,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as LogoDetails?,
    ));
  }

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeDetailsCopyWith<$Res>? get theme {
    if (_self.theme == null) {
      return null;
    }

    return $ThemeDetailsCopyWith<$Res>(_self.theme!, (value) {
      return _then(_self.copyWith(theme: value));
    });
  }

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogoDetailsCopyWith<$Res>? get logo {
    if (_self.logo == null) {
      return null;
    }

    return $LogoDetailsCopyWith<$Res>(_self.logo!, (value) {
      return _then(_self.copyWith(logo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _BrandDetails implements BrandDetails {
  const _BrandDetails({this.theme, this.logo});
  factory _BrandDetails.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsFromJson(json);

  @override
  final ThemeDetails? theme;
  @override
  final LogoDetails? logo;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BrandDetailsCopyWith<_BrandDetails> get copyWith =>
      __$BrandDetailsCopyWithImpl<_BrandDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BrandDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrandDetails &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, theme, logo);

  @override
  String toString() {
    return 'BrandDetails(theme: $theme, logo: $logo)';
  }
}

/// @nodoc
abstract mixin class _$BrandDetailsCopyWith<$Res>
    implements $BrandDetailsCopyWith<$Res> {
  factory _$BrandDetailsCopyWith(
          _BrandDetails value, $Res Function(_BrandDetails) _then) =
      __$BrandDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({ThemeDetails? theme, LogoDetails? logo});

  @override
  $ThemeDetailsCopyWith<$Res>? get theme;
  @override
  $LogoDetailsCopyWith<$Res>? get logo;
}

/// @nodoc
class __$BrandDetailsCopyWithImpl<$Res>
    implements _$BrandDetailsCopyWith<$Res> {
  __$BrandDetailsCopyWithImpl(this._self, this._then);

  final _BrandDetails _self;
  final $Res Function(_BrandDetails) _then;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? theme = freezed,
    Object? logo = freezed,
  }) {
    return _then(_BrandDetails(
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeDetails?,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as LogoDetails?,
    ));
  }

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeDetailsCopyWith<$Res>? get theme {
    if (_self.theme == null) {
      return null;
    }

    return $ThemeDetailsCopyWith<$Res>(_self.theme!, (value) {
      return _then(_self.copyWith(theme: value));
    });
  }

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogoDetailsCopyWith<$Res>? get logo {
    if (_self.logo == null) {
      return null;
    }

    return $LogoDetailsCopyWith<$Res>(_self.logo!, (value) {
      return _then(_self.copyWith(logo: value));
    });
  }
}

/// @nodoc
mixin _$ThemeDetails {
  Map<String, dynamic>? get lightTheme;
  Map<String, dynamic>? get darkTheme;

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeDetailsCopyWith<ThemeDetails> get copyWith =>
      _$ThemeDetailsCopyWithImpl<ThemeDetails>(
          this as ThemeDetails, _$identity);

  /// Serializes this ThemeDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeDetails &&
            const DeepCollectionEquality()
                .equals(other.lightTheme, lightTheme) &&
            const DeepCollectionEquality().equals(other.darkTheme, darkTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lightTheme),
      const DeepCollectionEquality().hash(darkTheme));

  @override
  String toString() {
    return 'ThemeDetails(lightTheme: $lightTheme, darkTheme: $darkTheme)';
  }
}

/// @nodoc
abstract mixin class $ThemeDetailsCopyWith<$Res> {
  factory $ThemeDetailsCopyWith(
          ThemeDetails value, $Res Function(ThemeDetails) _then) =
      _$ThemeDetailsCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? lightTheme, Map<String, dynamic>? darkTheme});
}

/// @nodoc
class _$ThemeDetailsCopyWithImpl<$Res> implements $ThemeDetailsCopyWith<$Res> {
  _$ThemeDetailsCopyWithImpl(this._self, this._then);

  final ThemeDetails _self;
  final $Res Function(ThemeDetails) _then;

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightTheme = freezed,
    Object? darkTheme = freezed,
  }) {
    return _then(_self.copyWith(
      lightTheme: freezed == lightTheme
          ? _self.lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      darkTheme: freezed == darkTheme
          ? _self.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ThemeDetails implements ThemeDetails {
  const _ThemeDetails(
      {final Map<String, dynamic>? lightTheme,
      final Map<String, dynamic>? darkTheme})
      : _lightTheme = lightTheme,
        _darkTheme = darkTheme;
  factory _ThemeDetails.fromJson(Map<String, dynamic> json) =>
      _$ThemeDetailsFromJson(json);

  final Map<String, dynamic>? _lightTheme;
  @override
  Map<String, dynamic>? get lightTheme {
    final value = _lightTheme;
    if (value == null) return null;
    if (_lightTheme is EqualUnmodifiableMapView) return _lightTheme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _darkTheme;
  @override
  Map<String, dynamic>? get darkTheme {
    final value = _darkTheme;
    if (value == null) return null;
    if (_darkTheme is EqualUnmodifiableMapView) return _darkTheme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemeDetailsCopyWith<_ThemeDetails> get copyWith =>
      __$ThemeDetailsCopyWithImpl<_ThemeDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThemeDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeDetails &&
            const DeepCollectionEquality()
                .equals(other._lightTheme, _lightTheme) &&
            const DeepCollectionEquality()
                .equals(other._darkTheme, _darkTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lightTheme),
      const DeepCollectionEquality().hash(_darkTheme));

  @override
  String toString() {
    return 'ThemeDetails(lightTheme: $lightTheme, darkTheme: $darkTheme)';
  }
}

/// @nodoc
abstract mixin class _$ThemeDetailsCopyWith<$Res>
    implements $ThemeDetailsCopyWith<$Res> {
  factory _$ThemeDetailsCopyWith(
          _ThemeDetails value, $Res Function(_ThemeDetails) _then) =
      __$ThemeDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? lightTheme, Map<String, dynamic>? darkTheme});
}

/// @nodoc
class __$ThemeDetailsCopyWithImpl<$Res>
    implements _$ThemeDetailsCopyWith<$Res> {
  __$ThemeDetailsCopyWithImpl(this._self, this._then);

  final _ThemeDetails _self;
  final $Res Function(_ThemeDetails) _then;

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lightTheme = freezed,
    Object? darkTheme = freezed,
  }) {
    return _then(_ThemeDetails(
      lightTheme: freezed == lightTheme
          ? _self._lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      darkTheme: freezed == darkTheme
          ? _self._darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdatesDetails {
  Map<String, DateTime?>? get parts;

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatesDetailsCopyWith<UpdatesDetails> get copyWith =>
      _$UpdatesDetailsCopyWithImpl<UpdatesDetails>(
          this as UpdatesDetails, _$identity);

  /// Serializes this UpdatesDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatesDetails &&
            const DeepCollectionEquality().equals(other.parts, parts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parts));

  @override
  String toString() {
    return 'UpdatesDetails(parts: $parts)';
  }
}

/// @nodoc
abstract mixin class $UpdatesDetailsCopyWith<$Res> {
  factory $UpdatesDetailsCopyWith(
          UpdatesDetails value, $Res Function(UpdatesDetails) _then) =
      _$UpdatesDetailsCopyWithImpl;
  @useResult
  $Res call({Map<String, DateTime?>? parts});
}

/// @nodoc
class _$UpdatesDetailsCopyWithImpl<$Res>
    implements $UpdatesDetailsCopyWith<$Res> {
  _$UpdatesDetailsCopyWithImpl(this._self, this._then);

  final UpdatesDetails _self;
  final $Res Function(UpdatesDetails) _then;

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = freezed,
  }) {
    return _then(_self.copyWith(
      parts: freezed == parts
          ? _self.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatesDetails implements UpdatesDetails {
  const _UpdatesDetails({final Map<String, DateTime?>? parts}) : _parts = parts;
  factory _UpdatesDetails.fromJson(Map<String, dynamic> json) =>
      _$UpdatesDetailsFromJson(json);

  final Map<String, DateTime?>? _parts;
  @override
  Map<String, DateTime?>? get parts {
    final value = _parts;
    if (value == null) return null;
    if (_parts is EqualUnmodifiableMapView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatesDetailsCopyWith<_UpdatesDetails> get copyWith =>
      __$UpdatesDetailsCopyWithImpl<_UpdatesDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatesDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatesDetails &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  @override
  String toString() {
    return 'UpdatesDetails(parts: $parts)';
  }
}

/// @nodoc
abstract mixin class _$UpdatesDetailsCopyWith<$Res>
    implements $UpdatesDetailsCopyWith<$Res> {
  factory _$UpdatesDetailsCopyWith(
          _UpdatesDetails value, $Res Function(_UpdatesDetails) _then) =
      __$UpdatesDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, DateTime?>? parts});
}

/// @nodoc
class __$UpdatesDetailsCopyWithImpl<$Res>
    implements _$UpdatesDetailsCopyWith<$Res> {
  __$UpdatesDetailsCopyWithImpl(this._self, this._then);

  final _UpdatesDetails _self;
  final $Res Function(_UpdatesDetails) _then;

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? parts = freezed,
  }) {
    return _then(_UpdatesDetails(
      parts: freezed == parts
          ? _self._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime?>?,
    ));
  }
}

/// @nodoc
mixin _$LogoDetails {
  String? get large;
  String? get small;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogoDetailsCopyWith<LogoDetails> get copyWith =>
      _$LogoDetailsCopyWithImpl<LogoDetails>(this as LogoDetails, _$identity);

  /// Serializes this LogoDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoDetails &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @override
  String toString() {
    return 'LogoDetails(large: $large, small: $small)';
  }
}

/// @nodoc
abstract mixin class $LogoDetailsCopyWith<$Res> {
  factory $LogoDetailsCopyWith(
          LogoDetails value, $Res Function(LogoDetails) _then) =
      _$LogoDetailsCopyWithImpl;
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class _$LogoDetailsCopyWithImpl<$Res> implements $LogoDetailsCopyWith<$Res> {
  _$LogoDetailsCopyWithImpl(this._self, this._then);

  final LogoDetails _self;
  final $Res Function(LogoDetails) _then;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_self.copyWith(
      large: freezed == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _self.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LogoDetails implements LogoDetails {
  const _LogoDetails({this.large, this.small});
  factory _LogoDetails.fromJson(Map<String, dynamic> json) =>
      _$LogoDetailsFromJson(json);

  @override
  final String? large;
  @override
  final String? small;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LogoDetailsCopyWith<_LogoDetails> get copyWith =>
      __$LogoDetailsCopyWithImpl<_LogoDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LogoDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogoDetails &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @override
  String toString() {
    return 'LogoDetails(large: $large, small: $small)';
  }
}

/// @nodoc
abstract mixin class _$LogoDetailsCopyWith<$Res>
    implements $LogoDetailsCopyWith<$Res> {
  factory _$LogoDetailsCopyWith(
          _LogoDetails value, $Res Function(_LogoDetails) _then) =
      __$LogoDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class __$LogoDetailsCopyWithImpl<$Res> implements _$LogoDetailsCopyWith<$Res> {
  __$LogoDetailsCopyWithImpl(this._self, this._then);

  final _LogoDetails _self;
  final $Res Function(_LogoDetails) _then;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_LogoDetails(
      large: freezed == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _self.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VersionDetails {
  String? get latest;
  String? get required;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VersionDetailsCopyWith<VersionDetails> get copyWith =>
      _$VersionDetailsCopyWithImpl<VersionDetails>(
          this as VersionDetails, _$identity);

  /// Serializes this VersionDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VersionDetails &&
            (identical(other.latest, latest) || other.latest == latest) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latest, required);

  @override
  String toString() {
    return 'VersionDetails(latest: $latest, required: $required)';
  }
}

/// @nodoc
abstract mixin class $VersionDetailsCopyWith<$Res> {
  factory $VersionDetailsCopyWith(
          VersionDetails value, $Res Function(VersionDetails) _then) =
      _$VersionDetailsCopyWithImpl;
  @useResult
  $Res call({String? latest, String? required});
}

/// @nodoc
class _$VersionDetailsCopyWithImpl<$Res>
    implements $VersionDetailsCopyWith<$Res> {
  _$VersionDetailsCopyWithImpl(this._self, this._then);

  final VersionDetails _self;
  final $Res Function(VersionDetails) _then;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latest = freezed,
    Object? required = freezed,
  }) {
    return _then(_self.copyWith(
      latest: freezed == latest
          ? _self.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VersionDetails implements VersionDetails {
  const _VersionDetails({this.latest, this.required});
  factory _VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);

  @override
  final String? latest;
  @override
  final String? required;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VersionDetailsCopyWith<_VersionDetails> get copyWith =>
      __$VersionDetailsCopyWithImpl<_VersionDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VersionDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionDetails &&
            (identical(other.latest, latest) || other.latest == latest) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latest, required);

  @override
  String toString() {
    return 'VersionDetails(latest: $latest, required: $required)';
  }
}

/// @nodoc
abstract mixin class _$VersionDetailsCopyWith<$Res>
    implements $VersionDetailsCopyWith<$Res> {
  factory _$VersionDetailsCopyWith(
          _VersionDetails value, $Res Function(_VersionDetails) _then) =
      __$VersionDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({String? latest, String? required});
}

/// @nodoc
class __$VersionDetailsCopyWithImpl<$Res>
    implements _$VersionDetailsCopyWith<$Res> {
  __$VersionDetailsCopyWithImpl(this._self, this._then);

  final _VersionDetails _self;
  final $Res Function(_VersionDetails) _then;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latest = freezed,
    Object? required = freezed,
  }) {
    return _then(_VersionDetails(
      latest: freezed == latest
          ? _self.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
