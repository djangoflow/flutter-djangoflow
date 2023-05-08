//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'change.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Change {
  /// Returns a new [Change] instance.
  Change({

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
  bool operator ==(Object other) => identical(this, other) || other is Change &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode;

  factory Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

