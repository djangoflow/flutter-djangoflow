// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedMessageRequest _$PatchedMessageRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedMessageRequest',
      json,
      ($checkedConvert) {
        final val = PatchedMessageRequest(
          body: $checkedConvert('body', (v) => v as String?),
          parentId: $checkedConvert('parent_id', (v) => v as String?),
          isReaction:
              $checkedConvert('is_reaction', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'parentId': 'parent_id', 'isReaction': 'is_reaction'},
    );

Map<String, dynamic> _$PatchedMessageRequestToJson(
    PatchedMessageRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('body', instance.body);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('is_reaction', instance.isReaction);
  return val;
}
