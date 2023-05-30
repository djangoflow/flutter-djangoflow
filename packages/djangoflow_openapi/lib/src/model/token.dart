//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Token {
  /// Returns a new [Token] instance.
  Token({

     this.token,
  });

  @JsonKey(
    
    name: r'token',
    required: false,
    includeIfNull: false
  )


  final String? token;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Token &&
     other.token == token;

  @override
  int get hashCode =>
    token.hashCode;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

