// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatState {
  int get roomId;
  ChatRoom? get room;
  Map<int, User> get roomUsers;
  List<ChatMessage> get messages;
  User? get me;
  bool get loading;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatStateCopyWith<ChatState> get copyWith =>
      _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);

  /// Serializes this ChatState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatState &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other.roomUsers, roomUsers) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomId,
      room,
      const DeepCollectionEquality().hash(roomUsers),
      const DeepCollectionEquality().hash(messages),
      me,
      loading);

  @override
  String toString() {
    return 'ChatState(roomId: $roomId, room: $room, roomUsers: $roomUsers, messages: $messages, me: $me, loading: $loading)';
  }
}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) =
      _$ChatStateCopyWithImpl;
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
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

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
    return _then(_self.copyWith(
      roomId: null == roomId
          ? _self.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      room: freezed == room
          ? _self.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
      roomUsers: null == roomUsers
          ? _self.roomUsers
          : roomUsers // ignore: cast_nullable_to_non_nullable
              as Map<int, User>,
      messages: null == messages
          ? _self.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      me: freezed == me
          ? _self.me
          : me // ignore: cast_nullable_to_non_nullable
              as User?,
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChatState implements ChatState {
  const _ChatState(
      {required this.roomId,
      this.room,
      final Map<int, User> roomUsers = const <int, User>{},
      final List<ChatMessage> messages = const <ChatMessage>[],
      this.me,
      this.loading = false})
      : _roomUsers = roomUsers,
        _messages = messages;
  factory _ChatState.fromJson(Map<String, dynamic> json) =>
      _$ChatStateFromJson(json);

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

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatState &&
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

  @override
  String toString() {
    return 'ChatState(roomId: $roomId, room: $room, roomUsers: $roomUsers, messages: $messages, me: $me, loading: $loading)';
  }
}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) _then) =
      __$ChatStateCopyWithImpl;
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
class __$ChatStateCopyWithImpl<$Res> implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roomId = null,
    Object? room = freezed,
    Object? roomUsers = null,
    Object? messages = null,
    Object? me = freezed,
    Object? loading = null,
  }) {
    return _then(_ChatState(
      roomId: null == roomId
          ? _self.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      room: freezed == room
          ? _self.room
          : room // ignore: cast_nullable_to_non_nullable
              as ChatRoom?,
      roomUsers: null == roomUsers
          ? _self._roomUsers
          : roomUsers // ignore: cast_nullable_to_non_nullable
              as Map<int, User>,
      messages: null == messages
          ? _self._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      me: freezed == me
          ? _self.me
          : me // ignore: cast_nullable_to_non_nullable
              as User?,
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
