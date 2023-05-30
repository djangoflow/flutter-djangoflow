//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'signup.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Signup {
  /// Returns a new [Signup] instance.
  Signup({

     this.firstName,

     this.lastName,
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



  @override
  bool operator ==(Object other) => identical(this, other) || other is Signup &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode;

  factory Signup.fromJson(Map<String, dynamic> json) => _$SignupFromJson(json);

  Map<String, dynamic> toJson() => _$SignupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

