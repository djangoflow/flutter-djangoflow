// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_seen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageSeen _$MessageSeenFromJson(Map<String, dynamic> json) => $checkedCreate(
      'MessageSeen',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message_ids'],
        );
        final val = MessageSeen(
          messageIds: $checkedConvert('message_ids',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'messageIds': 'message_ids'},
    );

Map<String, dynamic> _$MessageSeenToJson(MessageSeen instance) =>
    <String, dynamic>{
      'message_ids': instance.messageIds,
    };
