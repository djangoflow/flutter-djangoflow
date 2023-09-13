// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_otp_device_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedOTPDeviceList _$PaginatedOTPDeviceListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PaginatedOTPDeviceList',
      json,
      ($checkedConvert) {
        final val = PaginatedOTPDeviceList(
          count: $checkedConvert('count', (v) => v as int?),
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OTPDevice.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaginatedOTPDeviceListToJson(
    PaginatedOTPDeviceList instance) {
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
