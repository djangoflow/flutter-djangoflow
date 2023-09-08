//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'otp_obtain.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OTPObtain {
  /// Returns a new [OTPObtain] instance.
  OTPObtain({

     this.email,

     this.otp,
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



  @override
  bool operator ==(Object other) => identical(this, other) || other is OTPObtain &&
     other.email == email &&
     other.otp == otp;

  @override
  int get hashCode =>
    email.hashCode +
    otp.hashCode;

  factory OTPObtain.fromJson(Map<String, dynamic> json) => _$OTPObtainFromJson(json);

  Map<String, dynamic> toJson() => _$OTPObtainToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

