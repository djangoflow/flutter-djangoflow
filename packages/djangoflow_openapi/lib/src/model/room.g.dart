// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Room',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['title'],
        );
        final val = Room(
          id: $checkedConvert('id', (v) => v as String?),
          created: $checkedConvert(
              'created', (v) => v == null ? null : DateTime.parse(v as String)),
          modified: $checkedConvert('modified',
              (v) => v == null ? null : DateTime.parse(v as String)),
          creatorId: $checkedConvert('creator_id', (v) => v as String?),
          messageTotalCount:
              $checkedConvert('message_total_count', (v) => v as int?),
          messageNewCount:
              $checkedConvert('message_new_count', (v) => v as int?),
          lastMessage: $checkedConvert(
              'last_message',
              (v) => v == null
                  ? null
                  : Message.fromJson(v as Map<String, dynamic>)),
          isMuted: $checkedConvert('is_muted', (v) => v as bool?),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          isPublic: $checkedConvert('is_public', (v) => v as bool?),
          image: $checkedConvert('image', (v) => v as String?),
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'creatorId': 'creator_id',
        'messageTotalCount': 'message_total_count',
        'messageNewCount': 'message_new_count',
        'lastMessage': 'last_message',
        'isMuted': 'is_muted',
        'isPublic': 'is_public'
      },
    );

Map<String, dynamic> _$RoomToJson(Room instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('modified', instance.modified?.toIso8601String());
  writeNotNull('creator_id', instance.creatorId);
  writeNotNull('message_total_count', instance.messageTotalCount);
  writeNotNull('message_new_count', instance.messageNewCount);
  writeNotNull('last_message', instance.lastMessage?.toJson());
  writeNotNull('is_muted', instance.isMuted);
  val['title'] = instance.title;
  writeNotNull('description', instance.description);
  writeNotNull('is_public', instance.isPublic);
  writeNotNull('image', instance.image);
  writeNotNull('users', instance.users);
  return val;
}
