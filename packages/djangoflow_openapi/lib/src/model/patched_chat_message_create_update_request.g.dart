// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_chat_message_create_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedChatMessageCreateUpdateRequest
    _$PatchedChatMessageCreateUpdateRequestFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PatchedChatMessageCreateUpdateRequest',
          json,
          ($checkedConvert) {
            final val = PatchedChatMessageCreateUpdateRequest(
              message: $checkedConvert('message', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$PatchedChatMessageCreateUpdateRequestToJson(
    PatchedChatMessageCreateUpdateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
