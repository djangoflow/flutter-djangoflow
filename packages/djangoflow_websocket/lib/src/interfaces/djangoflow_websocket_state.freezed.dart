// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_websocket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DjangoflowWebsocketState _$DjangoflowWebsocketStateFromJson(
    Map<String, dynamic> json) {
  return _DjangoflowWebsocketState.fromJson(json);
}

/// @nodoc
mixin _$DjangoflowWebsocketState {
  /// The last message received from the server
  Map<String, dynamic>? get message => throw _privateConstructorUsedError;

  /// Connection state message
  String? get connectionStateMessage => throw _privateConstructorUsedError;

  /// Serializes this DjangoflowWebsocketState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DjangoflowWebsocketStateCopyWith<DjangoflowWebsocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DjangoflowWebsocketStateCopyWith<$Res> {
  factory $DjangoflowWebsocketStateCopyWith(DjangoflowWebsocketState value,
          $Res Function(DjangoflowWebsocketState) then) =
      _$DjangoflowWebsocketStateCopyWithImpl<$Res, DjangoflowWebsocketState>;
  @useResult
  $Res call({Map<String, dynamic>? message, String? connectionStateMessage});
}

/// @nodoc
class _$DjangoflowWebsocketStateCopyWithImpl<$Res,
        $Val extends DjangoflowWebsocketState>
    implements $DjangoflowWebsocketStateCopyWith<$Res> {
  _$DjangoflowWebsocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? connectionStateMessage = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      connectionStateMessage: freezed == connectionStateMessage
          ? _value.connectionStateMessage
          : connectionStateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DjangoflowWebsocketStateImplCopyWith<$Res>
    implements $DjangoflowWebsocketStateCopyWith<$Res> {
  factory _$$DjangoflowWebsocketStateImplCopyWith(
          _$DjangoflowWebsocketStateImpl value,
          $Res Function(_$DjangoflowWebsocketStateImpl) then) =
      __$$DjangoflowWebsocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? message, String? connectionStateMessage});
}

/// @nodoc
class __$$DjangoflowWebsocketStateImplCopyWithImpl<$Res>
    extends _$DjangoflowWebsocketStateCopyWithImpl<$Res,
        _$DjangoflowWebsocketStateImpl>
    implements _$$DjangoflowWebsocketStateImplCopyWith<$Res> {
  __$$DjangoflowWebsocketStateImplCopyWithImpl(
      _$DjangoflowWebsocketStateImpl _value,
      $Res Function(_$DjangoflowWebsocketStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? connectionStateMessage = freezed,
  }) {
    return _then(_$DjangoflowWebsocketStateImpl(
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      connectionStateMessage: freezed == connectionStateMessage
          ? _value.connectionStateMessage
          : connectionStateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DjangoflowWebsocketStateImpl implements _DjangoflowWebsocketState {
  const _$DjangoflowWebsocketStateImpl(
      {final Map<String, dynamic>? message, this.connectionStateMessage})
      : _message = message;

  factory _$DjangoflowWebsocketStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DjangoflowWebsocketStateImplFromJson(json);

  /// The last message received from the server
  final Map<String, dynamic>? _message;

  /// The last message received from the server
  @override
  Map<String, dynamic>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Connection state message
  @override
  final String? connectionStateMessage;

  @override
  String toString() {
    return 'DjangoflowWebsocketState(message: $message, connectionStateMessage: $connectionStateMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DjangoflowWebsocketStateImpl &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.connectionStateMessage, connectionStateMessage) ||
                other.connectionStateMessage == connectionStateMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_message), connectionStateMessage);

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DjangoflowWebsocketStateImplCopyWith<_$DjangoflowWebsocketStateImpl>
      get copyWith => __$$DjangoflowWebsocketStateImplCopyWithImpl<
          _$DjangoflowWebsocketStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DjangoflowWebsocketStateImplToJson(
      this,
    );
  }
}

abstract class _DjangoflowWebsocketState implements DjangoflowWebsocketState {
  const factory _DjangoflowWebsocketState(
      {final Map<String, dynamic>? message,
      final String? connectionStateMessage}) = _$DjangoflowWebsocketStateImpl;

  factory _DjangoflowWebsocketState.fromJson(Map<String, dynamic> json) =
      _$DjangoflowWebsocketStateImpl.fromJson;

  /// The last message received from the server
  @override
  Map<String, dynamic>? get message;

  /// Connection state message
  @override
  String? get connectionStateMessage;

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DjangoflowWebsocketStateImplCopyWith<_$DjangoflowWebsocketStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
