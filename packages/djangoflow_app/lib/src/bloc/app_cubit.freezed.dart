// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  bool get firstRun => throw _privateConstructorUsedError;
  AppEnvironment get environment => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  Brightness get brightness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {bool firstRun,
      AppEnvironment environment,
      String locale,
      Brightness brightness});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? firstRun = freezed,
    Object? environment = freezed,
    Object? locale = freezed,
    Object? brightness = freezed,
  }) {
    return _then(_value.copyWith(
      firstRun: firstRun == freezed
          ? _value.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as AppEnvironment,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool firstRun,
      AppEnvironment environment,
      String locale,
      Brightness brightness});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? firstRun = freezed,
    Object? environment = freezed,
    Object? locale = freezed,
    Object? brightness = freezed,
  }) {
    return _then(_$_AppState(
      firstRun: firstRun == freezed
          ? _value.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as AppEnvironment,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState with DiagnosticableTreeMixin implements _AppState {
  const _$_AppState(
      {this.firstRun = true,
      this.environment = AppEnvironment.live,
      this.locale = 'en',
      this.brightness = Brightness.light});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  @JsonKey()
  final bool firstRun;
  @override
  @JsonKey()
  final AppEnvironment environment;
  @override
  @JsonKey()
  final String locale;
  @override
  @JsonKey()
  final Brightness brightness;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(firstRun: $firstRun, environment: $environment, locale: $locale, brightness: $brightness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('firstRun', firstRun))
      ..add(DiagnosticsProperty('environment', environment))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('brightness', brightness));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality().equals(other.firstRun, firstRun) &&
            const DeepCollectionEquality()
                .equals(other.environment, environment) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality()
                .equals(other.brightness, brightness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstRun),
      const DeepCollectionEquality().hash(environment),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(brightness));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final bool firstRun,
      final AppEnvironment environment,
      final String locale,
      final Brightness brightness}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  bool get firstRun;
  @override
  AppEnvironment get environment;
  @override
  String get locale;
  @override
  Brightness get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
