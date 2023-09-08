//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_signup.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserSignup {
  /// Returns a new [UserSignup] instance.
  UserSignup({

    required  this.email,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false
  )


  final String email;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserSignup &&
     other.email == email;

  @override
  int get hashCode =>
    email.hashCode;

  factory UserSignup.fromJson(Map<String, dynamic> json) => _$UserSignupFromJson(json);

  Map<String, dynamic> toJson() => _$UserSignupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

