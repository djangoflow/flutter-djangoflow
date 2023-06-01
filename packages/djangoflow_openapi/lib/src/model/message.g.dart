// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Message',
      json,
      ($checkedConvert) {
        final val = Message(
          id: $checkedConvert('id', (v) => v as String?),
          created: $checkedConvert(
              'created', (v) => v == null ? null : DateTime.parse(v as String)),
          modified: $checkedConvert('modified',
              (v) => v == null ? null : DateTime.parse(v as String)),
          roomUserId: $checkedConvert('room_user_id', (v) => v as String?),
          isMe: $checkedConvert('is_me', (v) => v as bool?),
          isSeenByMe: $checkedConvert('is_seen_by_me', (v) => v as bool?),
          roomId: $checkedConvert('room_id', (v) => v as String?),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageImage.fromJson(e as Map<String, dynamic>))
                  .toList()),
          reactions: $checkedConvert(
              'reactions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
                  .toList()),
          body: $checkedConvert('body', (v) => v as String?),
          parentId: $checkedConvert('parent_id', (v) => v as String?),
          isReaction:
              $checkedConvert('is_reaction', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'roomUserId': 'room_user_id',
        'isMe': 'is_me',
        'isSeenByMe': 'is_seen_by_me',
        'roomId': 'room_id',
        'parentId': 'parent_id',
        'isReaction': 'is_reaction'
      },
    );

Map<String, dynamic> _$MessageToJson(Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('modified', instance.modified?.toIso8601String());
  writeNotNull('room_user_id', instance.roomUserId);
  writeNotNull('is_me', instance.isMe);
  writeNotNull('is_seen_by_me', instance.isSeenByMe);
  writeNotNull('room_id', instance.roomId);
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull(
      'reactions', instance.reactions?.map((e) => e.toJson()).toList());
  writeNotNull('body', instance.body);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('is_reaction', instance.isReaction);
  return val;
}
