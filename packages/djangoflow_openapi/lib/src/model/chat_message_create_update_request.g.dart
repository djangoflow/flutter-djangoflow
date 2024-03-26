// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_create_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageCreateUpdateRequest _$ChatMessageCreateUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatMessageCreateUpdateRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message'],
        );
        final val = ChatMessageCreateUpdateRequest(
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChatMessageCreateUpdateRequestToJson(
        ChatMessageCreateUpdateRequest instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
