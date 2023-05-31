//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_verify_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenVerifyRequest {
  /// Returns a new [TokenVerifyRequest] instance.
  TokenVerifyRequest({

    required  this.token,
  });

  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenVerifyRequest &&
     other.token == token;

  @override
  int get hashCode =>
    token.hashCode;

  factory TokenVerifyRequest.fromJson(Map<String, dynamic> json) => _$TokenVerifyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TokenVerifyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

