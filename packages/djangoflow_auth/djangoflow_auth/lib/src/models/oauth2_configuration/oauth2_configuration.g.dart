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
        _$OAuth2ConfigurationImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'redirect_uri': instance.redirectUri,
      'scope': instance.scope,
      if (instance.state case final value?) 'state': value,
      if (instance.codeChallenge case final value?) 'code_challenge': value,
      if (instance.codeChallengeMethod case final value?)
        'code_challenge_method': value,
      if (instance.responseType case final value?) 'response_type': value,
      'customUriScheme': instance.customUriScheme,
    };
