//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/otp_device.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_otp_device_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedOTPDeviceList {
  /// Returns a new [PaginatedOTPDeviceList] instance.
  PaginatedOTPDeviceList({

     this.count,

     this.next,

     this.previous,

     this.results,
  });

  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false
  )


  final int? count;



  @JsonKey(
    
    name: r'next',
    required: false,
    includeIfNull: false
  )


  final String? next;



  @JsonKey(
    
    name: r'previous',
    required: false,
    includeIfNull: false
  )


  final String? previous;



  @JsonKey(
    
    name: r'results',
    required: false,
    includeIfNull: false
  )


  final List<OTPDevice>? results;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedOTPDeviceList &&
     other.count == count &&
     other.next == next &&
     other.previous == previous &&
     other.results == results;

  @override
  int get hashCode =>
    count.hashCode +
    (next == null ? 0 : next.hashCode) +
    (previous == null ? 0 : previous.hashCode) +
    results.hashCode;

  factory PaginatedOTPDeviceList.fromJson(Map<String, dynamic> json) => _$PaginatedOTPDeviceListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedOTPDeviceListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

