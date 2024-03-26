// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_user_device_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedUserDeviceList _$PaginatedUserDeviceListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PaginatedUserDeviceList',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['count', 'results'],
        );
        final val = PaginatedUserDeviceList(
          count: $checkedConvert('count', (v) => v as int),
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => UserDevice.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedUserDeviceListToJson(
    PaginatedUserDeviceList instance) {
  final val = <String, dynamic>{
    'count': instance.count,
  };

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
