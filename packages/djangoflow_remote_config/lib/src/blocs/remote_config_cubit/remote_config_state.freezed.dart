// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteConfigState {
  bool get isLoading;
  Map<String, Object>? get config;
  DateTime? get lastUpdate;

  /// Create a copy of RemoteConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      _$RemoteConfigStateCopyWithImpl<RemoteConfigState>(
          this as RemoteConfigState, _$identity);

  /// Serializes this RemoteConfigState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoteConfigState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.config, config) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(config), lastUpdate);

  @override
  String toString() {
    return 'RemoteConfigState(isLoading: $isLoading, config: $config, lastUpdate: $lastUpdate)';
  }
}

/// @nodoc
abstract mixin class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) _then) =
      _$RemoteConfigStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading, Map<String, Object>? config, DateTime? lastUpdate});
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._self, this._then);

  final RemoteConfigState _self;
  final $Res Function(RemoteConfigState) _then;

  /// Create a copy of RemoteConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? config = freezed,
    Object? lastUpdate = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      config: freezed == config
          ? _self.config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      lastUpdate: freezed == lastUpdate
          ? _self.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RemoteConfigState implements RemoteConfigState {
  const _RemoteConfigState(
      {this.isLoading = false,
      final Map<String, Object>? config,
      this.lastUpdate})
      : _config = config;
  factory _RemoteConfigState.fromJson(Map<String, dynamic> json) =>
      _$RemoteConfigStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final Map<String, Object>? _config;
  @override
  Map<String, Object>? get config {
    final value = _config;
    if (value == null) return null;
    if (_config is EqualUnmodifiableMapView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? lastUpdate;

  /// Create a copy of RemoteConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoteConfigStateCopyWith<_RemoteConfigState> get copyWith =>
      __$RemoteConfigStateCopyWithImpl<_RemoteConfigState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RemoteConfigStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteConfigState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._config, _config) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_config), lastUpdate);

  @override
  String toString() {
    return 'RemoteConfigState(isLoading: $isLoading, config: $config, lastUpdate: $lastUpdate)';
  }
}

/// @nodoc
abstract mixin class _$RemoteConfigStateCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$RemoteConfigStateCopyWith(
          _RemoteConfigState value, $Res Function(_RemoteConfigState) _then) =
      __$RemoteConfigStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading, Map<String, Object>? config, DateTime? lastUpdate});
}

/// @nodoc
class __$RemoteConfigStateCopyWithImpl<$Res>
    implements _$RemoteConfigStateCopyWith<$Res> {
  __$RemoteConfigStateCopyWithImpl(this._self, this._then);

  final _RemoteConfigState _self;
  final $Res Function(_RemoteConfigState) _then;

  /// Create a copy of RemoteConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? config = freezed,
    Object? lastUpdate = freezed,
  }) {
    return _then(_RemoteConfigState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      config: freezed == config
          ? _self._config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      lastUpdate: freezed == lastUpdate
          ? _self.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
