// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ChatRoom',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['title'],
        );
        final val = ChatRoom(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String),
          created: $checkedConvert(
              'created', (v) => v == null ? null : DateTime.parse(v as String)),
          chatType: $checkedConvert('chat_type',
              (v) => $enumDecodeNullable(_$ChatTypeEnumEnumMap, v)),
          newestMessage: $checkedConvert('newest_message', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'chatType': 'chat_type',
        'newestMessage': 'newest_message'
      },
    );

Map<String, dynamic> _$ChatRoomToJson(ChatRoom instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('chat_type', _$ChatTypeEnumEnumMap[instance.chatType]);
  writeNotNull('newest_message', instance.newestMessage);
  return val;
}

const _$ChatTypeEnumEnumMap = {
  ChatTypeEnum.group: 'group',
  ChatTypeEnum.private: 'private',
};
