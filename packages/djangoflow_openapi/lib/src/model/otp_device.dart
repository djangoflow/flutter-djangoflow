//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/otp_device_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_device.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OTPDevice {
  /// Returns a new [OTPDevice] instance.
  OTPDevice({

     this.id,

     this.name,

    required  this.type,

     this.confirmed,

     this.extraData,
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
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final OTPDeviceTypeEnum type;



  @JsonKey(
    
    name: r'confirmed',
    required: false,
    includeIfNull: false
  )


  final bool? confirmed;



  @JsonKey(
    
    name: r'extra_data',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? extraData;



  @override
  bool operator ==(Object other) => identical(this, other) || other is OTPDevice &&
     other.id == id &&
     other.name == name &&
     other.type == type &&
     other.confirmed == confirmed &&
     other.extraData == extraData;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    type.hashCode +
    confirmed.hashCode +
    extraData.hashCode;

  factory OTPDevice.fromJson(Map<String, dynamic> json) => _$OTPDeviceFromJson(json);

  Map<String, dynamic> toJson() => _$OTPDeviceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

