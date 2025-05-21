// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_websocket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DjangoflowWebsocketState {
  /// The last message received from the server
  Map<String, dynamic>? get message;

  /// Connection state message
  String? get connectionStateMessage;

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DjangoflowWebsocketStateCopyWith<DjangoflowWebsocketState> get copyWith =>
      _$DjangoflowWebsocketStateCopyWithImpl<DjangoflowWebsocketState>(
          this as DjangoflowWebsocketState, _$identity);

  /// Serializes this DjangoflowWebsocketState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DjangoflowWebsocketState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.connectionStateMessage, connectionStateMessage) ||
                other.connectionStateMessage == connectionStateMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(message), connectionStateMessage);

  @override
  String toString() {
    return 'DjangoflowWebsocketState(message: $message, connectionStateMessage: $connectionStateMessage)';
  }
}

/// @nodoc
abstract mixin class $DjangoflowWebsocketStateCopyWith<$Res> {
  factory $DjangoflowWebsocketStateCopyWith(DjangoflowWebsocketState value,
          $Res Function(DjangoflowWebsocketState) _then) =
      _$DjangoflowWebsocketStateCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? message, String? connectionStateMessage});
}

/// @nodoc
class _$DjangoflowWebsocketStateCopyWithImpl<$Res>
    implements $DjangoflowWebsocketStateCopyWith<$Res> {
  _$DjangoflowWebsocketStateCopyWithImpl(this._self, this._then);

  final DjangoflowWebsocketState _self;
  final $Res Function(DjangoflowWebsocketState) _then;

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? connectionStateMessage = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      connectionStateMessage: freezed == connectionStateMessage
          ? _self.connectionStateMessage
          : connectionStateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DjangoflowWebsocketState implements DjangoflowWebsocketState {
  const _DjangoflowWebsocketState(
      {final Map<String, dynamic>? message, this.connectionStateMessage})
      : _message = message;
  factory _DjangoflowWebsocketState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowWebsocketStateFromJson(json);

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

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DjangoflowWebsocketStateCopyWith<_DjangoflowWebsocketState> get copyWith =>
      __$DjangoflowWebsocketStateCopyWithImpl<_DjangoflowWebsocketState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DjangoflowWebsocketStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DjangoflowWebsocketState &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.connectionStateMessage, connectionStateMessage) ||
                other.connectionStateMessage == connectionStateMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_message), connectionStateMessage);

  @override
  String toString() {
    return 'DjangoflowWebsocketState(message: $message, connectionStateMessage: $connectionStateMessage)';
  }
}

/// @nodoc
abstract mixin class _$DjangoflowWebsocketStateCopyWith<$Res>
    implements $DjangoflowWebsocketStateCopyWith<$Res> {
  factory _$DjangoflowWebsocketStateCopyWith(_DjangoflowWebsocketState value,
          $Res Function(_DjangoflowWebsocketState) _then) =
      __$DjangoflowWebsocketStateCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, dynamic>? message, String? connectionStateMessage});
}

/// @nodoc
class __$DjangoflowWebsocketStateCopyWithImpl<$Res>
    implements _$DjangoflowWebsocketStateCopyWith<$Res> {
  __$DjangoflowWebsocketStateCopyWithImpl(this._self, this._then);

  final _DjangoflowWebsocketState _self;
  final $Res Function(_DjangoflowWebsocketState) _then;

  /// Create a copy of DjangoflowWebsocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? connectionStateMessage = freezed,
  }) {
    return _then(_DjangoflowWebsocketState(
      message: freezed == message
          ? _self._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      connectionStateMessage: freezed == connectionStateMessage
          ? _self.connectionStateMessage
          : connectionStateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
