//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_blacklist_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenBlacklistRequest {
  /// Returns a new [TokenBlacklistRequest] instance.
  TokenBlacklistRequest({

    required  this.refresh,
  });

  @JsonKey(
    
    name: r'refresh',
    required: true,
    includeIfNull: false
  )


  final String refresh;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenBlacklistRequest &&
     other.refresh == refresh;

  @override
  int get hashCode =>
    refresh.hashCode;

  factory TokenBlacklistRequest.fromJson(Map<String, dynamic> json) => _$TokenBlacklistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TokenBlacklistRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

