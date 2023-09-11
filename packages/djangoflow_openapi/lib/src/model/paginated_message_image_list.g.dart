// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_message_image_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedMessageImageList _$PaginatedMessageImageListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PaginatedMessageImageList',
      json,
      ($checkedConvert) {
        final val = PaginatedMessageImageList(
          count: $checkedConvert('count', (v) => v as int?),
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageImage.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedMessageImageListToJson(
    PaginatedMessageImageList instance) {
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
