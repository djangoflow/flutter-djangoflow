// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_chat_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedChatMessageRequest _$PatchedChatMessageRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedChatMessageRequest',
      json,
      ($checkedConvert) {
        final val = PatchedChatMessageRequest(
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PatchedChatMessageRequestToJson(
    PatchedChatMessageRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
