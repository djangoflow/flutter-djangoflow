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
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChatMessageRequestToJson(ChatMessageRequest instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
