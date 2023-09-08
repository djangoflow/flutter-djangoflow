//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/user_device_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_device.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDevice {
  /// Returns a new [UserDevice] instance.
  UserDevice({

     this.id,

     this.name,

    required  this.registrationId,

     this.deviceId,

     this.active = true,

     this.dateCreated,

    required  this.type,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'registration_id',
    required: true,
    includeIfNull: false
  )


  final String registrationId;



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
    
    name: r'date_created',
    required: false,
    includeIfNull: false
  )


  final DateTime? dateCreated;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final UserDeviceTypeEnum type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserDevice &&
     other.id == id &&
     other.name == name &&
     other.registrationId == registrationId &&
     other.deviceId == deviceId &&
     other.active == active &&
     other.dateCreated == dateCreated &&
     other.type == type;

  @override
  int get hashCode =>
    id.hashCode +
    (name == null ? 0 : name.hashCode) +
    registrationId.hashCode +
    (deviceId == null ? 0 : deviceId.hashCode) +
    active.hashCode +
    (dateCreated == null ? 0 : dateCreated.hashCode) +
    type.hashCode;

  factory UserDevice.fromJson(Map<String, dynamic> json) => _$UserDeviceFromJson(json);

  Map<String, dynamic> toJson() => _$UserDeviceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

