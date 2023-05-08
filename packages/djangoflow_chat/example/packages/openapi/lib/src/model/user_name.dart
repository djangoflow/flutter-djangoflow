//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_name.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserName {
  /// Returns a new [UserName] instance.
  UserName({

     this.id,

     this.displayName,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



  @JsonKey(
    
    name: r'display_name',
    required: false,
    includeIfNull: false
  )


  final String? displayName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UserName &&
     other.id == id &&
     other.displayName == displayName;

  @override
  int get hashCode =>
    id.hashCode +
    displayName.hashCode;

  factory UserName.fromJson(Map<String, dynamic> json) => _$UserNameFromJson(json);

  Map<String, dynamic> toJson() => _$UserNameToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

