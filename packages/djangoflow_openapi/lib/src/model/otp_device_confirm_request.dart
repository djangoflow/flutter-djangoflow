//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'otp_device_confirm_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OTPDeviceConfirmRequest {
  /// Returns a new [OTPDeviceConfirmRequest] instance.
  OTPDeviceConfirmRequest({

    required  this.code,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false
  )


  final String code;



  @override
  bool operator ==(Object other) => identical(this, other) || other is OTPDeviceConfirmRequest &&
     other.code == code;

  @override
  int get hashCode =>
    code.hashCode;

  factory OTPDeviceConfirmRequest.fromJson(Map<String, dynamic> json) => _$OTPDeviceConfirmRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OTPDeviceConfirmRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

