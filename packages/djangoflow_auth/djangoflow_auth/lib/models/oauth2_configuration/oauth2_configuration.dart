// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth2_configuration.freezed.dart';
part 'oauth2_configuration.g.dart';

@freezed
class OAuth2Configuration with _$OAuth2Configuration {
  const OAuth2Configuration._();
  const factory OAuth2Configuration({
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'redirect_uri') required String redirectUri,
    required String scope,
    @JsonKey(name: 'state', includeIfNull: false) String? state,
    @JsonKey(name: 'code_challenge', includeIfNull: false)
    String? codeChallenge,
    @JsonKey(name: 'code_challenge_method', includeIfNull: false)
    String? codeChallengeMethod,
    @JsonKey(name: 'response_type', includeIfNull: false) String? responseType,

    /// Needed for mobile platforms
    String? customUriScheme,
  }) = _OAuth2Configuration;

  factory OAuth2Configuration.fromJson(Map<String, dynamic> json) =>
      _$OAuth2ConfigurationFromJson(json);
}
