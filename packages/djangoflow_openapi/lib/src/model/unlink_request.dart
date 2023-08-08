//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'unlink_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UnlinkRequest {
  /// Returns a new [UnlinkRequest] instance.
  UnlinkRequest({

     this.firstName,

     this.lastName,

     this.email,

     this.otp,

     this.password,
  });

  @JsonKey(
    
    name: r'first_name',
    required: false,
    includeIfNull: false
  )


  final String? firstName;



  @JsonKey(
    
    name: r'last_name',
    required: false,
    includeIfNull: false
  )


  final String? lastName;



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
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UnlinkRequest &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.email == email &&
     other.otp == otp &&
     other.password == password;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    email.hashCode +
    otp.hashCode +
    password.hashCode;

  factory UnlinkRequest.fromJson(Map<String, dynamic> json) => _$UnlinkRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UnlinkRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

