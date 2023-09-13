// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_message_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedMessageList _$PaginatedMessageListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PaginatedMessageList',
      json,
      ($checkedConvert) {
        final val = PaginatedMessageList(
          count: $checkedConvert('count', (v) => v as int?),
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedMessageListToJson(
    PaginatedMessageList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('next', instance.next);
  writeNotNull('previous', instance.previous);
  writeNotNull('results', instance.results?.map((e) => e.toJson()).toList());
  return val;
}
