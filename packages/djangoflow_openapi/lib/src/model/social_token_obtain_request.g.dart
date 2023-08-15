// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_token_obtain_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialTokenObtainRequest _$SocialTokenObtainRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SocialTokenObtainRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['provider', 'access_token'],
        );
        final val = SocialTokenObtainRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          provider: $checkedConvert('provider',
              (v) => $enumDecode(_$SocialTokenObtainProviderEnumEnumMap, v)),
          accessToken: $checkedConvert('access_token', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'accessToken': 'access_token'
      },
    );

Map<String, dynamic> _$SocialTokenObtainRequestToJson(
    SocialTokenObtainRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  val['provider'] = _$SocialTokenObtainProviderEnumEnumMap[instance.provider]!;
  val['access_token'] = instance.accessToken;
  return val;
}

const _$SocialTokenObtainProviderEnumEnumMap = {
  SocialTokenObtainProviderEnum.googleOauth2: 'google-oauth2',
};
