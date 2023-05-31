//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_refresh_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenRefreshRequest {
  /// Returns a new [TokenRefreshRequest] instance.
  TokenRefreshRequest({

    required  this.refresh,
  });

  @JsonKey(
    
    name: r'refresh',
    required: true,
    includeIfNull: false
  )


  final String refresh;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefreshRequest &&
     other.refresh == refresh;

  @override
  int get hashCode =>
    refresh.hashCode;

  factory TokenRefreshRequest.fromJson(Map<String, dynamic> json) => _$TokenRefreshRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TokenRefreshRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

