// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_chat_message_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedChatMessageUpdateRequest _$PatchedChatMessageUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedChatMessageUpdateRequest',
      json,
      ($checkedConvert) {
        final val = PatchedChatMessageUpdateRequest(
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PatchedChatMessageUpdateRequestToJson(
    PatchedChatMessageUpdateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
