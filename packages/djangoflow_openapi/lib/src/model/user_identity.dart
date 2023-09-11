//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_identity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserIdentity {
  /// Returns a new [UserIdentity] instance.
  UserIdentity({

     this.firstName,

     this.lastName,

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
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserIdentity &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.email == email;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    email.hashCode;

  factory UserIdentity.fromJson(Map<String, dynamic> json) => _$UserIdentityFromJson(json);

  Map<String, dynamic> toJson() => _$UserIdentityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

