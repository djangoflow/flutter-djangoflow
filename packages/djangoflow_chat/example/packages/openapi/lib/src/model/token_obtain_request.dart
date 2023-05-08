//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_obtain_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenObtainRequest {
  /// Returns a new [TokenObtainRequest] instance.
  TokenObtainRequest({

     this.email,

     this.phoneNumber,

     this.otp,

     this.password,
  });

  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @JsonKey(
    
    name: r'phone_number',
    required: false,
    includeIfNull: false
  )


  final String? phoneNumber;



  @JsonKey(
    
    name: r'otp',
    required: false,
    includeIfNull: false
  )


  final String? otp;



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenObtainRequest &&
     other.email == email &&
     other.phoneNumber == phoneNumber &&
     other.otp == otp &&
     other.password == password;

  @override
  int get hashCode =>
    email.hashCode +
    phoneNumber.hashCode +
    otp.hashCode +
    password.hashCode;

  factory TokenObtainRequest.fromJson(Map<String, dynamic> json) => _$TokenObtainRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TokenObtainRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

