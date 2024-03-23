// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageUpdateRequest _$ChatMessageUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatMessageUpdateRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message'],
        );
        final val = ChatMessageUpdateRequest(
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChatMessageUpdateRequestToJson(
        ChatMessageUpdateRequest instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
