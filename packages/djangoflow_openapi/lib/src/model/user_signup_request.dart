//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_signup_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserSignupRequest {
  /// Returns a new [UserSignupRequest] instance.
  UserSignupRequest({

    required  this.email,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserSignupRequest &&
     other.email == email;

  @override
  int get hashCode =>
    email.hashCode;

  factory UserSignupRequest.fromJson(Map<String, dynamic> json) => _$UserSignupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserSignupRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

