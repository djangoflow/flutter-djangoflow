//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user2_fa.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User2FA {
  /// Returns a new [User2FA] instance.
  User2FA({

     this.isRequired,
  });

  @JsonKey(
    
    name: r'is_required',
    required: false,
    includeIfNull: false
  )


  final bool? isRequired;



  @override
  bool operator ==(Object other) => identical(this, other) || other is User2FA &&
     other.isRequired == isRequired;

  @override
  int get hashCode =>
    isRequired.hashCode;

  factory User2FA.fromJson(Map<String, dynamic> json) => _$User2FAFromJson(json);

  Map<String, dynamic> toJson() => _$User2FAToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

