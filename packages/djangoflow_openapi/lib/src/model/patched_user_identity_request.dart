//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_user_identity_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUserIdentityRequest {
  /// Returns a new [PatchedUserIdentityRequest] instance.
  PatchedUserIdentityRequest({

     this.firstName,

     this.lastName,

     this.password,

     this.email,
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
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUserIdentityRequest &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.password == password &&
     other.email == email;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    password.hashCode +
    email.hashCode;

  factory PatchedUserIdentityRequest.fromJson(Map<String, dynamic> json) => _$PatchedUserIdentityRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserIdentityRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

