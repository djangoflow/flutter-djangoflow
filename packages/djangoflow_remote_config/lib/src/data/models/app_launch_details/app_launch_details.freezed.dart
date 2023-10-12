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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppLaunchDetails _$AppLaunchDetailsFromJson(Map<String, dynamic> json) {
  return _AppLaunchDetails.fromJson(json);
}

/// @nodoc
mixin _$AppLaunchDetails {
  BrandDetails? get brand => throw _privateConstructorUsedError;
  UpdatesDetails? get updates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppLaunchDetailsCopyWith<AppLaunchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLaunchDetailsCopyWith<$Res> {
  factory $AppLaunchDetailsCopyWith(
          AppLaunchDetails value, $Res Function(AppLaunchDetails) then) =
      _$AppLaunchDetailsCopyWithImpl<$Res, AppLaunchDetails>;
  @useResult
  $Res call({BrandDetails? brand, UpdatesDetails? updates});

  $BrandDetailsCopyWith<$Res>? get brand;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? updates = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDetails?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as UpdatesDetails?,
    ) as $Val);
  }

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
  $Res call({BrandDetails? brand, UpdatesDetails? updates});

  @override
  $BrandDetailsCopyWith<$Res>? get brand;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? updates = freezed,
  }) {
    return _then(_$AppLaunchDetailsImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDetails?,
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
  const _$AppLaunchDetailsImpl({this.brand, this.updates});

  factory _$AppLaunchDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLaunchDetailsImplFromJson(json);

  @override
  final BrandDetails? brand;
  @override
  final UpdatesDetails? updates;

  @override
  String toString() {
    return 'AppLaunchDetails(brand: $brand, updates: $updates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLaunchDetailsImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.updates, updates) || other.updates == updates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, brand, updates);

  @JsonKey(ignore: true)
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
      final UpdatesDetails? updates}) = _$AppLaunchDetailsImpl;

  factory _AppLaunchDetails.fromJson(Map<String, dynamic> json) =
      _$AppLaunchDetailsImpl.fromJson;

  @override
  BrandDetails? get brand;
  @override
  UpdatesDetails? get updates;
  @override
  @JsonKey(ignore: true)
  _$$AppLaunchDetailsImplCopyWith<_$AppLaunchDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandDetails _$BrandDetailsFromJson(Map<String, dynamic> json) {
  return _BrandDetails.fromJson(json);
}

/// @nodoc
mixin _$BrandDetails {
  ThemeDetails? get theme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDetailsCopyWith<BrandDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailsCopyWith<$Res> {
  factory $BrandDetailsCopyWith(
          BrandDetails value, $Res Function(BrandDetails) then) =
      _$BrandDetailsCopyWithImpl<$Res, BrandDetails>;
  @useResult
  $Res call({ThemeDetails? theme});

  $ThemeDetailsCopyWith<$Res>? get theme;
}

/// @nodoc
class _$BrandDetailsCopyWithImpl<$Res, $Val extends BrandDetails>
    implements $BrandDetailsCopyWith<$Res> {
  _$BrandDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeDetails?,
    ) as $Val);
  }

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
}

/// @nodoc
abstract class _$$BrandDetailsImplCopyWith<$Res>
    implements $BrandDetailsCopyWith<$Res> {
  factory _$$BrandDetailsImplCopyWith(
          _$BrandDetailsImpl value, $Res Function(_$BrandDetailsImpl) then) =
      __$$BrandDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeDetails? theme});

  @override
  $ThemeDetailsCopyWith<$Res>? get theme;
}

/// @nodoc
class __$$BrandDetailsImplCopyWithImpl<$Res>
    extends _$BrandDetailsCopyWithImpl<$Res, _$BrandDetailsImpl>
    implements _$$BrandDetailsImplCopyWith<$Res> {
  __$$BrandDetailsImplCopyWithImpl(
      _$BrandDetailsImpl _value, $Res Function(_$BrandDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$BrandDetailsImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandDetailsImpl implements _BrandDetails {
  const _$BrandDetailsImpl({this.theme});

  factory _$BrandDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDetailsImplFromJson(json);

  @override
  final ThemeDetails? theme;

  @override
  String toString() {
    return 'BrandDetails(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailsImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
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
  const factory _BrandDetails({final ThemeDetails? theme}) = _$BrandDetailsImpl;

  factory _BrandDetails.fromJson(Map<String, dynamic> json) =
      _$BrandDetailsImpl.fromJson;

  @override
  ThemeDetails? get theme;
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._lightTheme, _lightTheme) &&
            const DeepCollectionEquality()
                .equals(other._darkTheme, _darkTheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lightTheme),
      const DeepCollectionEquality().hash(_darkTheme));

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$ThemeDetailsImplCopyWith<_$ThemeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatesDetails _$UpdatesDetailsFromJson(Map<String, dynamic> json) {
  return _UpdatesDetails.fromJson(json);
}

/// @nodoc
mixin _$UpdatesDetails {
  Map<String, DateTime?>? get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatesDetailsImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$UpdatesDetailsImplCopyWith<_$UpdatesDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
