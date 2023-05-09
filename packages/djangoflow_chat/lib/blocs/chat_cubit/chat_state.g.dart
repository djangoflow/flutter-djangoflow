// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatState _$$_ChatStateFromJson(Map<String, dynamic> json) => _$_ChatState(
      roomId: json['roomId'] as String,
      room: json['room'] == null
          ? null
          : Room.fromJson(json['room'] as Map<String, dynamic>),
      roomUsers: (json['roomUsers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, RoomUser.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, RoomUser>{},
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Message>[],
      me: json['me'] == null
          ? null
          : User.fromJson(json['me'] as Map<String, dynamic>),
      loading: json['loading'] as bool? ?? false,
      uploadingImage: json['uploadingImage'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ChatStateToJson(_$_ChatState instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'room': instance.room,
      'roomUsers': instance.roomUsers,
      'messages': instance.messages,
      'me': instance.me,
      'loading': instance.loading,
      'uploadingImage': instance.uploadingImage,
    };
