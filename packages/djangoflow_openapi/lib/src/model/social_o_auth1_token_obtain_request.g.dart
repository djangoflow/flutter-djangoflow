// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_o_auth1_token_obtain_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialOAuth1TokenObtainRequest _$SocialOAuth1TokenObtainRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SocialOAuth1TokenObtainRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['provider', 'oauth_token', 'oauth_token_secret'],
        );
        final val = SocialOAuth1TokenObtainRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          provider: $checkedConvert('provider', (v) => v as bool),
          oauthToken: $checkedConvert('oauth_token', (v) => v as String),
          oauthTokenSecret:
              $checkedConvert('oauth_token_secret', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'oauthToken': 'oauth_token',
        'oauthTokenSecret': 'oauth_token_secret'
      },
    );

Map<String, dynamic> _$SocialOAuth1TokenObtainRequestToJson(
    SocialOAuth1TokenObtainRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  val['provider'] = instance.provider;
  val['oauth_token'] = instance.oauthToken;
  val['oauth_token_secret'] = instance.oauthTokenSecret;
  return val;
}
