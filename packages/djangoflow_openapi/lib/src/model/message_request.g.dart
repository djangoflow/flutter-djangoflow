// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MessageRequest',
      json,
      ($checkedConvert) {
        final val = MessageRequest(
          body: $checkedConvert('body', (v) => v as String?),
          parentId: $checkedConvert('parent_id', (v) => v as String?),
          isReaction:
              $checkedConvert('is_reaction', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'parentId': 'parent_id', 'isReaction': 'is_reaction'},
    );

Map<String, dynamic> _$MessageRequestToJson(MessageRequest instance) {
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
