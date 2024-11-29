// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_launch_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppLaunchDetails _$AppLaunchDetailsFromJson(Map<String, dynamic> json) {
  return _AppLaunchDetails.fromJson(json);
}

/// @nodoc
mixin _$AppLaunchDetails {
  BrandDetails? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  VersionDetails? get appVersion => throw _privateConstructorUsedError;
  UpdatesDetails? get updates => throw _privateConstructorUsedError;

  /// Serializes this AppLaunchDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppLaunchDetailsCopyWith<AppLaunchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLaunchDetailsCopyWith<$Res> {
  factory $AppLaunchDetailsCopyWith(
          AppLaunchDetails value, $Res Function(AppLaunchDetails) then) =
      _$AppLaunchDetailsCopyWithImpl<$Res, AppLaunchDetails>;
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
class _$AppLaunchDetailsCopyWithImpl<$Res, $Val extends AppLaunchDetails>
    implements $AppLaunchDetailsCopyWith<$Res> {
  _$AppLaunchDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? appVersion = freezed,
    Object? updates = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDetails?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as VersionDetails?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as UpdatesDetails?,
    ) as $Val);
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandDetailsCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandDetailsCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VersionDetailsCopyWith<$Res>? get appVersion {
    if (_value.appVersion == null) {
      return null;
    }

    return $VersionDetailsCopyWith<$Res>(_value.appVersion!, (value) {
      return _then(_value.copyWith(appVersion: value) as $Val);
    });
  }

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdatesDetailsCopyWith<$Res>? get updates {
    if (_value.updates == null) {
      return null;
    }

    return $UpdatesDetailsCopyWith<$Res>(_value.updates!, (value) {
      return _then(_value.copyWith(updates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppLaunchDetailsImplCopyWith<$Res>
    implements $AppLaunchDetailsCopyWith<$Res> {
  factory _$$AppLaunchDetailsImplCopyWith(_$AppLaunchDetailsImpl value,
          $Res Function(_$AppLaunchDetailsImpl) then) =
      __$$AppLaunchDetailsImplCopyWithImpl<$Res>;
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
class __$$AppLaunchDetailsImplCopyWithImpl<$Res>
    extends _$AppLaunchDetailsCopyWithImpl<$Res, _$AppLaunchDetailsImpl>
    implements _$$AppLaunchDetailsImplCopyWith<$Res> {
  __$$AppLaunchDetailsImplCopyWithImpl(_$AppLaunchDetailsImpl _value,
      $Res Function(_$AppLaunchDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? appVersion = freezed,
    Object? updates = freezed,
  }) {
    return _then(_$AppLaunchDetailsImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDetails?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as VersionDetails?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as UpdatesDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLaunchDetailsImpl implements _AppLaunchDetails {
  const _$AppLaunchDetailsImpl(
      {this.brand,
      @JsonKey(name: 'app_version') this.appVersion,
      this.updates});

  factory _$AppLaunchDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLaunchDetailsImplFromJson(json);

  @override
  final BrandDetails? brand;
  @override
  @JsonKey(name: 'app_version')
  final VersionDetails? appVersion;
  @override
  final UpdatesDetails? updates;

  @override
  String toString() {
    return 'AppLaunchDetails(brand: $brand, appVersion: $appVersion, updates: $updates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLaunchDetailsImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.updates, updates) || other.updates == updates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brand, appVersion, updates);

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLaunchDetailsImplCopyWith<_$AppLaunchDetailsImpl> get copyWith =>
      __$$AppLaunchDetailsImplCopyWithImpl<_$AppLaunchDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLaunchDetailsImplToJson(
      this,
    );
  }
}

abstract class _AppLaunchDetails implements AppLaunchDetails {
  const factory _AppLaunchDetails(
      {final BrandDetails? brand,
      @JsonKey(name: 'app_version') final VersionDetails? appVersion,
      final UpdatesDetails? updates}) = _$AppLaunchDetailsImpl;

  factory _AppLaunchDetails.fromJson(Map<String, dynamic> json) =
      _$AppLaunchDetailsImpl.fromJson;

  @override
  BrandDetails? get brand;
  @override
  @JsonKey(name: 'app_version')
  VersionDetails? get appVersion;
  @override
  UpdatesDetails? get updates;

  /// Create a copy of AppLaunchDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLaunchDetailsImplCopyWith<_$AppLaunchDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandDetails _$BrandDetailsFromJson(Map<String, dynamic> json) {
  return _BrandDetails.fromJson(json);
}

/// @nodoc
mixin _$BrandDetails {
  ThemeDetails? get theme => throw _privateConstructorUsedError;
  LogoDetails? get logo => throw _privateConstructorUsedError;

  /// Serializes this BrandDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandDetailsCopyWith<BrandDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailsCopyWith<$Res> {
  factory $BrandDetailsCopyWith(
          BrandDetails value, $Res Function(BrandDetails) then) =
      _$BrandDetailsCopyWithImpl<$Res, BrandDetails>;
  @useResult
  $Res call({ThemeDetails? theme, LogoDetails? logo});

  $ThemeDetailsCopyWith<$Res>? get theme;
  $LogoDetailsCopyWith<$Res>? get logo;
}

/// @nodoc
class _$BrandDetailsCopyWithImpl<$Res, $Val extends BrandDetails>
    implements $BrandDetailsCopyWith<$Res> {
  _$BrandDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeDetails?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as LogoDetails?,
    ) as $Val);
  }

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeDetailsCopyWith<$Res>? get theme {
    if (_value.theme == null) {
      return null;
    }

    return $ThemeDetailsCopyWith<$Res>(_value.theme!, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LogoDetailsCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $LogoDetailsCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandDetailsImplCopyWith<$Res>
    implements $BrandDetailsCopyWith<$Res> {
  factory _$$BrandDetailsImplCopyWith(
          _$BrandDetailsImpl value, $Res Function(_$BrandDetailsImpl) then) =
      __$$BrandDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeDetails? theme, LogoDetails? logo});

  @override
  $ThemeDetailsCopyWith<$Res>? get theme;
  @override
  $LogoDetailsCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$BrandDetailsImplCopyWithImpl<$Res>
    extends _$BrandDetailsCopyWithImpl<$Res, _$BrandDetailsImpl>
    implements _$$BrandDetailsImplCopyWith<$Res> {
  __$$BrandDetailsImplCopyWithImpl(
      _$BrandDetailsImpl _value, $Res Function(_$BrandDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$BrandDetailsImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeDetails?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as LogoDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandDetailsImpl implements _BrandDetails {
  const _$BrandDetailsImpl({this.theme, this.logo});

  factory _$BrandDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDetailsImplFromJson(json);

  @override
  final ThemeDetails? theme;
  @override
  final LogoDetails? logo;

  @override
  String toString() {
    return 'BrandDetails(theme: $theme, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailsImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, theme, logo);

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDetailsImplCopyWith<_$BrandDetailsImpl> get copyWith =>
      __$$BrandDetailsImplCopyWithImpl<_$BrandDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDetailsImplToJson(
      this,
    );
  }
}

abstract class _BrandDetails implements BrandDetails {
  const factory _BrandDetails(
      {final ThemeDetails? theme,
      final LogoDetails? logo}) = _$BrandDetailsImpl;

  factory _BrandDetails.fromJson(Map<String, dynamic> json) =
      _$BrandDetailsImpl.fromJson;

  @override
  ThemeDetails? get theme;
  @override
  LogoDetails? get logo;

  /// Create a copy of BrandDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandDetailsImplCopyWith<_$BrandDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThemeDetails _$ThemeDetailsFromJson(Map<String, dynamic> json) {
  return _ThemeDetails.fromJson(json);
}

/// @nodoc
mixin _$ThemeDetails {
  Map<String, dynamic>? get lightTheme => throw _privateConstructorUsedError;
  Map<String, dynamic>? get darkTheme => throw _privateConstructorUsedError;

  /// Serializes this ThemeDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeDetailsCopyWith<ThemeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeDetailsCopyWith<$Res> {
  factory $ThemeDetailsCopyWith(
          ThemeDetails value, $Res Function(ThemeDetails) then) =
      _$ThemeDetailsCopyWithImpl<$Res, ThemeDetails>;
  @useResult
  $Res call(
      {Map<String, dynamic>? lightTheme, Map<String, dynamic>? darkTheme});
}

/// @nodoc
class _$ThemeDetailsCopyWithImpl<$Res, $Val extends ThemeDetails>
    implements $ThemeDetailsCopyWith<$Res> {
  _$ThemeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightTheme = freezed,
    Object? darkTheme = freezed,
  }) {
    return _then(_value.copyWith(
      lightTheme: freezed == lightTheme
          ? _value.lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      darkTheme: freezed == darkTheme
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeDetailsImplCopyWith<$Res>
    implements $ThemeDetailsCopyWith<$Res> {
  factory _$$ThemeDetailsImplCopyWith(
          _$ThemeDetailsImpl value, $Res Function(_$ThemeDetailsImpl) then) =
      __$$ThemeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? lightTheme, Map<String, dynamic>? darkTheme});
}

/// @nodoc
class __$$ThemeDetailsImplCopyWithImpl<$Res>
    extends _$ThemeDetailsCopyWithImpl<$Res, _$ThemeDetailsImpl>
    implements _$$ThemeDetailsImplCopyWith<$Res> {
  __$$ThemeDetailsImplCopyWithImpl(
      _$ThemeDetailsImpl _value, $Res Function(_$ThemeDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lightTheme = freezed,
    Object? darkTheme = freezed,
  }) {
    return _then(_$ThemeDetailsImpl(
      lightTheme: freezed == lightTheme
          ? _value._lightTheme
          : lightTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      darkTheme: freezed == darkTheme
          ? _value._darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeDetailsImpl implements _ThemeDetails {
  const _$ThemeDetailsImpl(
      {final Map<String, dynamic>? lightTheme,
      final Map<String, dynamic>? darkTheme})
      : _lightTheme = lightTheme,
        _darkTheme = darkTheme;

  factory _$ThemeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeDetailsImplFromJson(json);

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

  @override
  String toString() {
    return 'ThemeDetails(lightTheme: $lightTheme, darkTheme: $darkTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeDetailsImpl &&
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

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeDetailsImplCopyWith<_$ThemeDetailsImpl> get copyWith =>
      __$$ThemeDetailsImplCopyWithImpl<_$ThemeDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeDetailsImplToJson(
      this,
    );
  }
}

abstract class _ThemeDetails implements ThemeDetails {
  const factory _ThemeDetails(
      {final Map<String, dynamic>? lightTheme,
      final Map<String, dynamic>? darkTheme}) = _$ThemeDetailsImpl;

  factory _ThemeDetails.fromJson(Map<String, dynamic> json) =
      _$ThemeDetailsImpl.fromJson;

  @override
  Map<String, dynamic>? get lightTheme;
  @override
  Map<String, dynamic>? get darkTheme;

  /// Create a copy of ThemeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeDetailsImplCopyWith<_$ThemeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatesDetails _$UpdatesDetailsFromJson(Map<String, dynamic> json) {
  return _UpdatesDetails.fromJson(json);
}

/// @nodoc
mixin _$UpdatesDetails {
  Map<String, DateTime?>? get parts => throw _privateConstructorUsedError;

  /// Serializes this UpdatesDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatesDetailsCopyWith<UpdatesDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatesDetailsCopyWith<$Res> {
  factory $UpdatesDetailsCopyWith(
          UpdatesDetails value, $Res Function(UpdatesDetails) then) =
      _$UpdatesDetailsCopyWithImpl<$Res, UpdatesDetails>;
  @useResult
  $Res call({Map<String, DateTime?>? parts});
}

/// @nodoc
class _$UpdatesDetailsCopyWithImpl<$Res, $Val extends UpdatesDetails>
    implements $UpdatesDetailsCopyWith<$Res> {
  _$UpdatesDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = freezed,
  }) {
    return _then(_value.copyWith(
      parts: freezed == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatesDetailsImplCopyWith<$Res>
    implements $UpdatesDetailsCopyWith<$Res> {
  factory _$$UpdatesDetailsImplCopyWith(_$UpdatesDetailsImpl value,
          $Res Function(_$UpdatesDetailsImpl) then) =
      __$$UpdatesDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, DateTime?>? parts});
}

/// @nodoc
class __$$UpdatesDetailsImplCopyWithImpl<$Res>
    extends _$UpdatesDetailsCopyWithImpl<$Res, _$UpdatesDetailsImpl>
    implements _$$UpdatesDetailsImplCopyWith<$Res> {
  __$$UpdatesDetailsImplCopyWithImpl(
      _$UpdatesDetailsImpl _value, $Res Function(_$UpdatesDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = freezed,
  }) {
    return _then(_$UpdatesDetailsImpl(
      parts: freezed == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatesDetailsImpl implements _UpdatesDetails {
  const _$UpdatesDetailsImpl({final Map<String, DateTime?>? parts})
      : _parts = parts;

  factory _$UpdatesDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatesDetailsImplFromJson(json);

  final Map<String, DateTime?>? _parts;
  @override
  Map<String, DateTime?>? get parts {
    final value = _parts;
    if (value == null) return null;
    if (_parts is EqualUnmodifiableMapView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdatesDetails(parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatesDetailsImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatesDetailsImplCopyWith<_$UpdatesDetailsImpl> get copyWith =>
      __$$UpdatesDetailsImplCopyWithImpl<_$UpdatesDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatesDetailsImplToJson(
      this,
    );
  }
}

abstract class _UpdatesDetails implements UpdatesDetails {
  const factory _UpdatesDetails({final Map<String, DateTime?>? parts}) =
      _$UpdatesDetailsImpl;

  factory _UpdatesDetails.fromJson(Map<String, dynamic> json) =
      _$UpdatesDetailsImpl.fromJson;

  @override
  Map<String, DateTime?>? get parts;

  /// Create a copy of UpdatesDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatesDetailsImplCopyWith<_$UpdatesDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LogoDetails _$LogoDetailsFromJson(Map<String, dynamic> json) {
  return _LogoDetails.fromJson(json);
}

/// @nodoc
mixin _$LogoDetails {
  String? get large => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;

  /// Serializes this LogoDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoDetailsCopyWith<LogoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoDetailsCopyWith<$Res> {
  factory $LogoDetailsCopyWith(
          LogoDetails value, $Res Function(LogoDetails) then) =
      _$LogoDetailsCopyWithImpl<$Res, LogoDetails>;
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class _$LogoDetailsCopyWithImpl<$Res, $Val extends LogoDetails>
    implements $LogoDetailsCopyWith<$Res> {
  _$LogoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoDetailsImplCopyWith<$Res>
    implements $LogoDetailsCopyWith<$Res> {
  factory _$$LogoDetailsImplCopyWith(
          _$LogoDetailsImpl value, $Res Function(_$LogoDetailsImpl) then) =
      __$$LogoDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? large, String? small});
}

/// @nodoc
class __$$LogoDetailsImplCopyWithImpl<$Res>
    extends _$LogoDetailsCopyWithImpl<$Res, _$LogoDetailsImpl>
    implements _$$LogoDetailsImplCopyWith<$Res> {
  __$$LogoDetailsImplCopyWithImpl(
      _$LogoDetailsImpl _value, $Res Function(_$LogoDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? small = freezed,
  }) {
    return _then(_$LogoDetailsImpl(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoDetailsImpl implements _LogoDetails {
  const _$LogoDetailsImpl({this.large, this.small});

  factory _$LogoDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoDetailsImplFromJson(json);

  @override
  final String? large;
  @override
  final String? small;

  @override
  String toString() {
    return 'LogoDetails(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoDetailsImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoDetailsImplCopyWith<_$LogoDetailsImpl> get copyWith =>
      __$$LogoDetailsImplCopyWithImpl<_$LogoDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoDetailsImplToJson(
      this,
    );
  }
}

abstract class _LogoDetails implements LogoDetails {
  const factory _LogoDetails({final String? large, final String? small}) =
      _$LogoDetailsImpl;

  factory _LogoDetails.fromJson(Map<String, dynamic> json) =
      _$LogoDetailsImpl.fromJson;

  @override
  String? get large;
  @override
  String? get small;

  /// Create a copy of LogoDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoDetailsImplCopyWith<_$LogoDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) {
  return _VersionDetails.fromJson(json);
}

/// @nodoc
mixin _$VersionDetails {
  String? get latest => throw _privateConstructorUsedError;
  String? get required => throw _privateConstructorUsedError;

  /// Serializes this VersionDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VersionDetailsCopyWith<VersionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionDetailsCopyWith<$Res> {
  factory $VersionDetailsCopyWith(
          VersionDetails value, $Res Function(VersionDetails) then) =
      _$VersionDetailsCopyWithImpl<$Res, VersionDetails>;
  @useResult
  $Res call({String? latest, String? required});
}

/// @nodoc
class _$VersionDetailsCopyWithImpl<$Res, $Val extends VersionDetails>
    implements $VersionDetailsCopyWith<$Res> {
  _$VersionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latest = freezed,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionDetailsImplCopyWith<$Res>
    implements $VersionDetailsCopyWith<$Res> {
  factory _$$VersionDetailsImplCopyWith(_$VersionDetailsImpl value,
          $Res Function(_$VersionDetailsImpl) then) =
      __$$VersionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? latest, String? required});
}

/// @nodoc
class __$$VersionDetailsImplCopyWithImpl<$Res>
    extends _$VersionDetailsCopyWithImpl<$Res, _$VersionDetailsImpl>
    implements _$$VersionDetailsImplCopyWith<$Res> {
  __$$VersionDetailsImplCopyWithImpl(
      _$VersionDetailsImpl _value, $Res Function(_$VersionDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latest = freezed,
    Object? required = freezed,
  }) {
    return _then(_$VersionDetailsImpl(
      latest: freezed == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionDetailsImpl implements _VersionDetails {
  const _$VersionDetailsImpl({this.latest, this.required});

  factory _$VersionDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionDetailsImplFromJson(json);

  @override
  final String? latest;
  @override
  final String? required;

  @override
  String toString() {
    return 'VersionDetails(latest: $latest, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionDetailsImpl &&
            (identical(other.latest, latest) || other.latest == latest) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latest, required);

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionDetailsImplCopyWith<_$VersionDetailsImpl> get copyWith =>
      __$$VersionDetailsImplCopyWithImpl<_$VersionDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionDetailsImplToJson(
      this,
    );
  }
}

abstract class _VersionDetails implements VersionDetails {
  const factory _VersionDetails(
      {final String? latest, final String? required}) = _$VersionDetailsImpl;

  factory _VersionDetails.fromJson(Map<String, dynamic> json) =
      _$VersionDetailsImpl.fromJson;

  @override
  String? get latest;
  @override
  String? get required;

  /// Create a copy of VersionDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VersionDetailsImplCopyWith<_$VersionDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
