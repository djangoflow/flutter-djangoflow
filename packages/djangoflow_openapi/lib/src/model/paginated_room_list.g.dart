// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_room_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRoomList _$PaginatedRoomListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PaginatedRoomList',
      json,
      ($checkedConvert) {
        final val = PaginatedRoomList(
          count: $checkedConvert('count', (v) => v as int?),
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedRoomListToJson(PaginatedRoomList instance) {
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
