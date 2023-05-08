//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_refresh_sliding_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenRefreshSlidingRequest {
  /// Returns a new [TokenRefreshSlidingRequest] instance.
  TokenRefreshSlidingRequest({

    required  this.token,
  });

  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefreshSlidingRequest &&
     other.token == token;

  @override
  int get hashCode =>
    token.hashCode;

  factory TokenRefreshSlidingRequest.fromJson(Map<String, dynamic> json) => _$TokenRefreshSlidingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TokenRefreshSlidingRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

