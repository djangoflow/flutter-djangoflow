//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User {
  /// Returns a new [User] instance.
  User({

     this.id,

     this.email,

     this.avatar,

     this.firstName,

     this.lastName,

     this.phoneNumber,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false
  )


  final String? email;



  @JsonKey(
    
    name: r'avatar',
    required: false,
    includeIfNull: false
  )


  final String? avatar;



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
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.email == email &&
     other.avatar == avatar &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.phoneNumber == phoneNumber;

  @override
  int get hashCode =>
    id.hashCode +
    email.hashCode +
    (avatar == null ? 0 : avatar.hashCode) +
    firstName.hashCode +
    lastName.hashCode +
    (phoneNumber == null ? 0 : phoneNumber.hashCode);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

