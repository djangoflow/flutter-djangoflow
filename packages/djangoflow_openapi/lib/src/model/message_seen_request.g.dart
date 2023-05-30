// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_seen_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageSeenRequest _$MessageSeenRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MessageSeenRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['message_ids'],
        );
        final val = MessageSeenRequest(
          messageIds: $checkedConvert('message_ids',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'messageIds': 'message_ids'},
    );

Map<String, dynamic> _$MessageSeenRequestToJson(MessageSeenRequest instance) =>
    <String, dynamic>{
      'message_ids': instance.messageIds,
    };
