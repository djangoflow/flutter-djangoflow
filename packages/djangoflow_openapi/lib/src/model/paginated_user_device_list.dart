//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/user_device.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_user_device_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedUserDeviceList {
  /// Returns a new [PaginatedUserDeviceList] instance.
  PaginatedUserDeviceList({

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


  final List<UserDevice>? results;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedUserDeviceList &&
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

  factory PaginatedUserDeviceList.fromJson(Map<String, dynamic> json) => _$PaginatedUserDeviceListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedUserDeviceListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

