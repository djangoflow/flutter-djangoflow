// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_chat_message_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedChatMessageList _$PaginatedChatMessageListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PaginatedChatMessageList',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['results'],
        );
        final val = PaginatedChatMessageList(
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedChatMessageListToJson(
    PaginatedChatMessageList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('next', instance.next);
  writeNotNull('previous', instance.previous);
  val['results'] = instance.results.map((e) => e.toJson()).toList();
  return val;
}
