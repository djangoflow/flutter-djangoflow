//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/user_device_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_user_device_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUserDeviceRequest {
  /// Returns a new [PatchedUserDeviceRequest] instance.
  PatchedUserDeviceRequest({

     this.name,

     this.registrationId,

     this.deviceId,

     this.active = true,

     this.type,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'registration_id',
    required: false,
    includeIfNull: false
  )


  final String? registrationId;



      /// Unique device identifier
  @JsonKey(
    
    name: r'device_id',
    required: false,
    includeIfNull: false
  )


  final String? deviceId;



      /// Inactive devices will not be sent notifications
  @JsonKey(
    defaultValue: true,
    name: r'active',
    required: false,
    includeIfNull: false
  )


  final bool? active;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final UserDeviceTypeEnum? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUserDeviceRequest &&
     other.name == name &&
     other.registrationId == registrationId &&
     other.deviceId == deviceId &&
     other.active == active &&
     other.type == type;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    registrationId.hashCode +
    (deviceId == null ? 0 : deviceId.hashCode) +
    active.hashCode +
    type.hashCode;

  factory PatchedUserDeviceRequest.fromJson(Map<String, dynamic> json) => _$PatchedUserDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserDeviceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

