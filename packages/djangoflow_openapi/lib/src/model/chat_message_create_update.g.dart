// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_create_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageCreateUpdate _$ChatMessageCreateUpdateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatMessageCreateUpdate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message'],
        );
        final val = ChatMessageCreateUpdate(
          id: $checkedConvert('id', (v) => v as int?),
          created: $checkedConvert(
              'created', (v) => v == null ? null : DateTime.parse(v as String)),
          modified: $checkedConvert('modified',
              (v) => v == null ? null : DateTime.parse(v as String)),
          chatRoom: $checkedConvert('chat_room', (v) => v as int?),
          createdBy: $checkedConvert(
              'created_by',
              (v) =>
                  v == null ? null : User.fromJson(v as Map<String, dynamic>)),
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'chatRoom': 'chat_room', 'createdBy': 'created_by'},
    );

Map<String, dynamic> _$ChatMessageCreateUpdateToJson(
    ChatMessageCreateUpdate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('modified', instance.modified?.toIso8601String());
  writeNotNull('chat_room', instance.chatRoom);
  writeNotNull('created_by', instance.createdBy?.toJson());
  val['message'] = instance.message;
  return val;
}
