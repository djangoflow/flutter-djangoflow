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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatState _$ChatStateFromJson(Map<String, dynamic> json) {
  return _ChatState.fromJson(json);
}

/// @nodoc
mixin _$ChatState {
  String get roomId => throw _privateConstructorUsedError;
  Room? get room => throw _privateConstructorUsedError;
  Map<String, RoomUser> get roomUsers => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  User get me => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get uploadingImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {String roomId,
      Room? room,
      Map<String, RoomUser> roomUsers,
      List<Message> messages,
      User me,
      bool loading,
      bool uploadingImage});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? room = freezed,
    Object? roomUsers = null,
    Object? messages = null,
    Object? me = null,
    Object? loading = null,
    Object? uploadingImage = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      roomUsers: null == roomUsers
          ? _value.roomUsers
          : roomUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, RoomUser>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      me: null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as User,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadingImage: null == uploadingImage
          ? _value.uploadingImage
          : uploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomId,
      Room? room,
      Map<String, RoomUser> roomUsers,
      List<Message> messages,
      User me,
      bool loading,
      bool uploadingImage});
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatState>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? room = freezed,
    Object? roomUsers = null,
    Object? messages = null,
    Object? me = null,
    Object? loading = null,
    Object? uploadingImage = null,
  }) {
    return _then(_$_ChatState(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      roomUsers: null == roomUsers
          ? _value._roomUsers
          : roomUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, RoomUser>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      me: null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as User,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadingImage: null == uploadingImage
          ? _value.uploadingImage
          : uploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.roomId,
      this.room,
      final Map<String, RoomUser> roomUsers = const <String, RoomUser>{},
      final List<Message> messages = const <Message>[],
      this.me = anonymousUser,
      this.loading = false,
      this.uploadingImage = false})
      : _roomUsers = roomUsers,
        _messages = messages;

  factory _$_ChatState.fromJson(Map<String, dynamic> json) =>
      _$$_ChatStateFromJson(json);

  @override
  final String roomId;
  @override
  final Room? room;
  final Map<String, RoomUser> _roomUsers;
  @override
  @JsonKey()
  Map<String, RoomUser> get roomUsers {
    if (_roomUsers is EqualUnmodifiableMapView) return _roomUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_roomUsers);
  }

  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final User me;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool uploadingImage;

  @override
  String toString() {
    return 'ChatState(roomId: $roomId, room: $room, roomUsers: $roomUsers, messages: $messages, me: $me, loading: $loading, uploadingImage: $uploadingImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality()
                .equals(other._roomUsers, _roomUsers) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.uploadingImage, uploadingImage) ||
                other.uploadingImage == uploadingImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomId,
      room,
      const DeepCollectionEquality().hash(_roomUsers),
      const DeepCollectionEquality().hash(_messages),
      me,
      loading,
      uploadingImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatStateToJson(
      this,
    );
  }
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final String roomId,
      final Room? room,
      final Map<String, RoomUser> roomUsers,
      final List<Message> messages,
      final User me,
      final bool loading,
      final bool uploadingImage}) = _$_ChatState;

  factory _ChatState.fromJson(Map<String, dynamic> json) =
      _$_ChatState.fromJson;

  @override
  String get roomId;
  @override
  Room? get room;
  @override
  Map<String, RoomUser> get roomUsers;
  @override
  List<Message> get messages;
  @override
  User get me;
  @override
  bool get loading;
  @override
  bool get uploadingImage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
