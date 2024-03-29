// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth2_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuth2ConfigurationImpl _$$OAuth2ConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$OAuth2ConfigurationImpl(
      clientId: json['client_id'] as String,
      redirectUri: json['redirect_uri'] as String,
      scope: json['scope'] as String,
      state: json['state'] as String?,
      codeChallenge: json['code_challenge'] as String?,
      codeChallengeMethod: json['code_challenge_method'] as String?,
      responseType: json['response_type'] as String?,
      customUriScheme: json['customUriScheme'] as String?,
    );

Map<String, dynamic> _$$OAuth2ConfigurationImplToJson(
    _$OAuth2ConfigurationImpl instance) {
  final val = <String, dynamic>{
    'client_id': instance.clientId,
    'redirect_uri': instance.redirectUri,
    'scope': instance.scope,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('code_challenge', instance.codeChallenge);
  writeNotNull('code_challenge_method', instance.codeChallengeMethod);
  writeNotNull('response_type', instance.responseType);
  val['customUriScheme'] = instance.customUriScheme;
  return val;
}
