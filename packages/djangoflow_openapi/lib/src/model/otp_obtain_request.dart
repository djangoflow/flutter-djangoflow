//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'otp_obtain_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OTPObtainRequest {
  /// Returns a new [OTPObtainRequest] instance.
  OTPObtainRequest({

     this.email,

     this.otp,

     this.redirectPath,
  });

  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @JsonKey(
    
    name: r'otp',
    required: false,
    includeIfNull: false
  )


  final String? otp;



  @JsonKey(
    
    name: r'redirect_path',
    required: false,
    includeIfNull: false
  )


  final String? redirectPath;



  @override
  bool operator ==(Object other) => identical(this, other) || other is OTPObtainRequest &&
     other.email == email &&
     other.otp == otp &&
     other.redirectPath == redirectPath;

  @override
  int get hashCode =>
    email.hashCode +
    otp.hashCode +
    redirectPath.hashCode;

  factory OTPObtainRequest.fromJson(Map<String, dynamic> json) => _$OTPObtainRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OTPObtainRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

