// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageUpdate _$ChatMessageUpdateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatMessageUpdate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message'],
        );
        final val = ChatMessageUpdate(
          id: $checkedConvert('id', (v) => v as int?),
          created: $checkedConvert(
              'created', (v) => v == null ? null : DateTime.parse(v as String)),
          modified: $checkedConvert('modified',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String),
          chatRoom: $checkedConvert('chat_room', (v) => v as int?),
          createdBy: $checkedConvert('created_by', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'chatRoom': 'chat_room', 'createdBy': 'created_by'},
    );

Map<String, dynamic> _$ChatMessageUpdateToJson(ChatMessageUpdate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('modified', instance.modified?.toIso8601String());
  val['message'] = instance.message;
  writeNotNull('chat_room', instance.chatRoom);
  writeNotNull('created_by', instance.createdBy);
  return val;
}
