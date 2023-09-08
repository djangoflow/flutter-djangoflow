//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/otp_device_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_device_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OTPDeviceRequest {
  /// Returns a new [OTPDeviceRequest] instance.
  OTPDeviceRequest({

     this.name,

    required  this.type,
  });

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



  @override
  bool operator ==(Object other) => identical(this, other) || other is OTPDeviceRequest &&
     other.name == name &&
     other.type == type;

  @override
  int get hashCode =>
    name.hashCode +
    type.hashCode;

  factory OTPDeviceRequest.fromJson(Map<String, dynamic> json) => _$OTPDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OTPDeviceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

