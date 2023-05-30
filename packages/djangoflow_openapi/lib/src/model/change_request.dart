//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'change_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChangeRequest {
  /// Returns a new [ChangeRequest] instance.
  ChangeRequest({

     this.firstName,

     this.lastName,

     this.username,

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
    
    name: r'username',
    required: false,
    includeIfNull: false
  )


  final String? username;



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
  bool operator ==(Object other) => identical(this, other) || other is ChangeRequest &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.username == username &&
     other.otp == otp &&
     other.password == password;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    username.hashCode +
    otp.hashCode +
    password.hashCode;

  factory ChangeRequest.fromJson(Map<String, dynamic> json) => _$ChangeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

