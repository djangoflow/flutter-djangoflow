// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_websocket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatWebsocketState _$ChatWebsocketStateFromJson(Map<String, dynamic> json) {
  return _ChatWebsocketState.fromJson(json);
}

/// @nodoc
mixin _$ChatWebsocketState {
  Map<String, dynamic>? get message => throw _privateConstructorUsedError;
  String? get connectionStateMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatWebsocketStateCopyWith<ChatWebsocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWebsocketStateCopyWith<$Res> {
  factory $ChatWebsocketStateCopyWith(
          ChatWebsocketState value, $Res Function(ChatWebsocketState) then) =
      _$ChatWebsocketStateCopyWithImpl<$Res, ChatWebsocketState>;
  @useResult
  $Res call({Map<String, dynamic>? message, String? connectionStateMessage});
}

/// @nodoc
class _$ChatWebsocketStateCopyWithImpl<$Res, $Val extends ChatWebsocketState>
    implements $ChatWebsocketStateCopyWith<$Res> {
  _$ChatWebsocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$_ChatWebsocketStateCopyWith<$Res>
    implements $ChatWebsocketStateCopyWith<$Res> {
  factory _$$_ChatWebsocketStateCopyWith(_$_ChatWebsocketState value,
          $Res Function(_$_ChatWebsocketState) then) =
      __$$_ChatWebsocketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? message, String? connectionStateMessage});
}

/// @nodoc
class __$$_ChatWebsocketStateCopyWithImpl<$Res>
    extends _$ChatWebsocketStateCopyWithImpl<$Res, _$_ChatWebsocketState>
    implements _$$_ChatWebsocketStateCopyWith<$Res> {
  __$$_ChatWebsocketStateCopyWithImpl(
      _$_ChatWebsocketState _value, $Res Function(_$_ChatWebsocketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? connectionStateMessage = freezed,
  }) {
    return _then(_$_ChatWebsocketState(
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
class _$_ChatWebsocketState implements _ChatWebsocketState {
  const _$_ChatWebsocketState(
      {final Map<String, dynamic>? message, this.connectionStateMessage})
      : _message = message;

  factory _$_ChatWebsocketState.fromJson(Map<String, dynamic> json) =>
      _$$_ChatWebsocketStateFromJson(json);

  final Map<String, dynamic>? _message;
  @override
  Map<String, dynamic>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? connectionStateMessage;

  @override
  String toString() {
    return 'ChatWebsocketState(message: $message, connectionStateMessage: $connectionStateMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatWebsocketState &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.connectionStateMessage, connectionStateMessage) ||
                other.connectionStateMessage == connectionStateMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_message), connectionStateMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatWebsocketStateCopyWith<_$_ChatWebsocketState> get copyWith =>
      __$$_ChatWebsocketStateCopyWithImpl<_$_ChatWebsocketState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatWebsocketStateToJson(
      this,
    );
  }
}

abstract class _ChatWebsocketState implements ChatWebsocketState {
  const factory _ChatWebsocketState(
      {final Map<String, dynamic>? message,
      final String? connectionStateMessage}) = _$_ChatWebsocketState;

  factory _ChatWebsocketState.fromJson(Map<String, dynamic> json) =
      _$_ChatWebsocketState.fromJson;

  @override
  Map<String, dynamic>? get message;
  @override
  String? get connectionStateMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatWebsocketStateCopyWith<_$_ChatWebsocketState> get copyWith =>
      throw _privateConstructorUsedError;
}
