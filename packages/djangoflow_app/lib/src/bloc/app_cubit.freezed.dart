// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {bool firstRun,
      AppEnvironment environment,
      String locale,
      ThemeMode themeMode});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstRun = null,
    Object? environment = null,
    Object? locale = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      firstRun: null == firstRun
          ? _value.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as AppEnvironment,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool firstRun,
      AppEnvironment environment,
      String locale,
      ThemeMode themeMode});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstRun = null,
    Object? environment = null,
    Object? locale = null,
    Object? themeMode = null,
  }) {
    return _then(_$AppStateImpl(
      firstRun: null == firstRun
          ? _value.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as AppEnvironment,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl with DiagnosticableTreeMixin implements _AppState {
  const _$AppStateImpl(
      {this.firstRun = true,
      this.environment = AppEnvironment.live,
      this.locale = 'en',
      this.themeMode = ThemeMode.light});

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

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
  final ThemeMode themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(firstRun: $firstRun, environment: $environment, locale: $locale, themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('firstRun', firstRun))
      ..add(DiagnosticsProperty('environment', environment))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.firstRun, firstRun) ||
                other.firstRun == firstRun) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstRun, environment, locale, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final bool firstRun,
      final AppEnvironment environment,
      final String locale,
      final ThemeMode themeMode}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  bool get firstRun;
  @override
  AppEnvironment get environment;
  @override
  String get locale;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
