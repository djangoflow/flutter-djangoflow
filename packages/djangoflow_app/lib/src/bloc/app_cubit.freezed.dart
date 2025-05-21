// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppState implements DiagnosticableTreeMixin {
  bool get firstRun;
  AppEnvironment get environment;
  String get locale;
  ThemeMode get themeMode;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppStateCopyWith<AppState> get copyWith =>
      _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);

  /// Serializes this AppState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
            other is AppState &&
            (identical(other.firstRun, firstRun) ||
                other.firstRun == firstRun) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstRun, environment, locale, themeMode);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(firstRun: $firstRun, environment: $environment, locale: $locale, themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) =
      _$AppStateCopyWithImpl;
  @useResult
  $Res call(
      {bool firstRun,
      AppEnvironment environment,
      String locale,
      ThemeMode themeMode});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstRun = null,
    Object? environment = null,
    Object? locale = null,
    Object? themeMode = null,
  }) {
    return _then(_self.copyWith(
      firstRun: null == firstRun
          ? _self.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      environment: null == environment
          ? _self.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as AppEnvironment,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppState with DiagnosticableTreeMixin implements AppState {
  const _AppState(
      {this.firstRun = true,
      this.environment = AppEnvironment.live,
      this.locale = 'en',
      this.themeMode = ThemeMode.light});
  factory _AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

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

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppStateToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
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
            other is _AppState &&
            (identical(other.firstRun, firstRun) ||
                other.firstRun == firstRun) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstRun, environment, locale, themeMode);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(firstRun: $firstRun, environment: $environment, locale: $locale, themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) =
      __$AppStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool firstRun,
      AppEnvironment environment,
      String locale,
      ThemeMode themeMode});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstRun = null,
    Object? environment = null,
    Object? locale = null,
    Object? themeMode = null,
  }) {
    return _then(_AppState(
      firstRun: null == firstRun
          ? _self.firstRun
          : firstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      environment: null == environment
          ? _self.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as AppEnvironment,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

// dart format on
