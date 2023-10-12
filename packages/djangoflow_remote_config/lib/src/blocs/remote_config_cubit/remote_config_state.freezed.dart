// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteConfigState _$RemoteConfigStateFromJson(Map<String, dynamic> json) {
  return _RemoteConfigState.fromJson(json);
}

/// @nodoc
mixin _$RemoteConfigState {
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, Object>? get config => throw _privateConstructorUsedError;
  DateTime? get lastUpdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res, RemoteConfigState>;
  @useResult
  $Res call(
      {bool isLoading, Map<String, Object>? config, DateTime? lastUpdate});
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res, $Val extends RemoteConfigState>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? config = freezed,
    Object? lastUpdate = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteConfigStateImplCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$$RemoteConfigStateImplCopyWith(_$RemoteConfigStateImpl value,
          $Res Function(_$RemoteConfigStateImpl) then) =
      __$$RemoteConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, Map<String, Object>? config, DateTime? lastUpdate});
}

/// @nodoc
class __$$RemoteConfigStateImplCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res, _$RemoteConfigStateImpl>
    implements _$$RemoteConfigStateImplCopyWith<$Res> {
  __$$RemoteConfigStateImplCopyWithImpl(_$RemoteConfigStateImpl _value,
      $Res Function(_$RemoteConfigStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? config = freezed,
    Object? lastUpdate = freezed,
  }) {
    return _then(_$RemoteConfigStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      config: freezed == config
          ? _value._config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteConfigStateImpl implements _RemoteConfigState {
  const _$RemoteConfigStateImpl(
      {this.isLoading = false,
      final Map<String, Object>? config,
      this.lastUpdate})
      : _config = config;

  factory _$RemoteConfigStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteConfigStateImplFromJson(json);

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

  @override
  String toString() {
    return 'RemoteConfigState(isLoading: $isLoading, config: $config, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteConfigStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._config, _config) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_config), lastUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteConfigStateImplCopyWith<_$RemoteConfigStateImpl> get copyWith =>
      __$$RemoteConfigStateImplCopyWithImpl<_$RemoteConfigStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteConfigStateImplToJson(
      this,
    );
  }
}

abstract class _RemoteConfigState implements RemoteConfigState {
  const factory _RemoteConfigState(
      {final bool isLoading,
      final Map<String, Object>? config,
      final DateTime? lastUpdate}) = _$RemoteConfigStateImpl;

  factory _RemoteConfigState.fromJson(Map<String, dynamic> json) =
      _$RemoteConfigStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  Map<String, Object>? get config;
  @override
  DateTime? get lastUpdate;
  @override
  @JsonKey(ignore: true)
  _$$RemoteConfigStateImplCopyWith<_$RemoteConfigStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
