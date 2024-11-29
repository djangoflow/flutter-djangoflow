// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatState _$ChatStateFromJson(Map<String, dynamic> json) {
  return _ChatState.fromJson(json);
}

/// @nodoc
mixin _$ChatState {
  int get roomId => throw _privateConstructorUsedError;
  ChatRoom? get room => throw _privateConstructorUsedError;
  Map<int, User> get roomUsers => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  User? get me => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Serializes this ChatState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {int roomId,
      ChatRoom? room,
      Map<int, User> roomUsers,
      List<ChatMessage> messages,
      User? me,
      bool loading});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? room = freezed,
    Object? roomUsers = null,
    Object? messages = null,
    Object? me = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
      roomUsers: null == roomUsers
          ? _value.roomUsers
          : roomUsers // ignore: cast_nullable_to_non_nullable
              as Map<int, User>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as User?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int roomId,
      ChatRoom? room,
      Map<int, User> roomUsers,
      List<ChatMessage> messages,
      User? me,
      bool loading});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? room = freezed,
    Object? roomUsers = null,
    Object? messages = null,
    Object? me = freezed,
    Object? loading = null,
  }) {
    return _then(_$ChatStateImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
      roomUsers: null == roomUsers
          ? _value._roomUsers
          : roomUsers // ignore: cast_nullable_to_non_nullable
              as Map<int, User>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as User?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required this.roomId,
      this.room,
      final Map<int, User> roomUsers = const <int, User>{},
      final List<ChatMessage> messages = const <ChatMessage>[],
      this.me,
      this.loading = false})
      : _roomUsers = roomUsers,
        _messages = messages;

  factory _$ChatStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatStateImplFromJson(json);

  @override
  final int roomId;
  @override
  final ChatRoom? room;
  final Map<int, User> _roomUsers;
  @override
  @JsonKey()
  Map<int, User> get roomUsers {
    if (_roomUsers is EqualUnmodifiableMapView) return _roomUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_roomUsers);
  }

  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final User? me;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'ChatState(roomId: $roomId, room: $room, roomUsers: $roomUsers, messages: $messages, me: $me, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality()
                .equals(other._roomUsers, _roomUsers) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomId,
      room,
      const DeepCollectionEquality().hash(_roomUsers),
      const DeepCollectionEquality().hash(_messages),
      me,
      loading);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatStateImplToJson(
      this,
    );
  }
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final int roomId,
      final ChatRoom? room,
      final Map<int, User> roomUsers,
      final List<ChatMessage> messages,
      final User? me,
      final bool loading}) = _$ChatStateImpl;

  factory _ChatState.fromJson(Map<String, dynamic> json) =
      _$ChatStateImpl.fromJson;

  @override
  int get roomId;
  @override
  ChatRoom? get room;
  @override
  Map<int, User> get roomUsers;
  @override
  List<ChatMessage> get messages;
  @override
  User? get me;
  @override
  bool get loading;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
