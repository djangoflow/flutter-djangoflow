//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/provider_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'social_token_obtain_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SocialTokenObtainRequest {
  /// Returns a new [SocialTokenObtainRequest] instance.
  SocialTokenObtainRequest({
    this.firstName,
    this.lastName,
    required this.accessToken,
    required this.provider,
  });

  @JsonKey(name: r'first_name', required: false, includeIfNull: false)
  final String? firstName;

  @JsonKey(name: r'last_name', required: false, includeIfNull: false)
  final String? lastName;

  @JsonKey(name: r'access_token', required: true, includeIfNull: false)
  final String accessToken;

  @JsonKey(name: r'provider', required: true, includeIfNull: false)
  final ProviderEnum provider;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SocialTokenObtainRequest &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.accessToken == accessToken &&
          other.provider == provider;

  @override
  int get hashCode =>
      firstName.hashCode +
      lastName.hashCode +
      accessToken.hashCode +
      provider.hashCode;

  factory SocialTokenObtainRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialTokenObtainRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SocialTokenObtainRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
