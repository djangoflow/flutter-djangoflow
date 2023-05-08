//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_user_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUserRequest {
  /// Returns a new [PatchedUserRequest] instance.
  PatchedUserRequest({

     this.firstName,

     this.lastName,

     this.phoneNumber,
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
    
    name: r'phone_number',
    required: false,
    includeIfNull: false
  )


  final String? phoneNumber;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUserRequest &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.phoneNumber == phoneNumber;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    (phoneNumber == null ? 0 : phoneNumber.hashCode);

  factory PatchedUserRequest.fromJson(Map<String, dynamic> json) => _$PatchedUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

