// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageRequest _$ChatMessageRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatMessageRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message'],
        );
        final val = ChatMessageRequest(
          chatRoom: $checkedConvert('chat_room', (v) => v as int?),
          createdBy: $checkedConvert('created_by', (v) => v as int?),
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'chatRoom': 'chat_room', 'createdBy': 'created_by'},
    );

Map<String, dynamic> _$ChatMessageRequestToJson(ChatMessageRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('chat_room', instance.chatRoom);
  writeNotNull('created_by', instance.createdBy);
  val['message'] = instance.message;
  return val;
}
