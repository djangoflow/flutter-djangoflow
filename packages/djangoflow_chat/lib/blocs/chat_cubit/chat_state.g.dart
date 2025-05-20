// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatState _$ChatStateFromJson(Map<String, dynamic> json) => _ChatState(
      roomId: (json['roomId'] as num).toInt(),
      room: json['room'] == null
          ? null
          : ChatRoom.fromJson(json['room'] as Map<String, dynamic>),
      roomUsers: (json['roomUsers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), User.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <int, User>{},
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChatMessage>[],
      me: json['me'] == null
          ? null
          : User.fromJson(json['me'] as Map<String, dynamic>),
      loading: json['loading'] as bool? ?? false,
    );

Map<String, dynamic> _$ChatStateToJson(_ChatState instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'room': instance.room,
      'roomUsers': instance.roomUsers.map((k, e) => MapEntry(k.toString(), e)),
      'messages': instance.messages,
      'me': instance.me,
      'loading': instance.loading,
    };
