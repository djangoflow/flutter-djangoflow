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
          requiredKeys: const ['access_token', 'provider'],
        );
        final val = SocialTokenObtainRequest(
          accessToken: $checkedConvert('access_token', (v) => v as String),
          provider: $checkedConvert(
              'provider', (v) => $enumDecode(_$ProviderEnumEnumMap, v)),
          otp: $checkedConvert('otp', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'accessToken': 'access_token'},
    );

Map<String, dynamic> _$SocialTokenObtainRequestToJson(
    SocialTokenObtainRequest instance) {
  final val = <String, dynamic>{
    'access_token': instance.accessToken,
    'provider': _$ProviderEnumEnumMap[instance.provider]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('otp', instance.otp);
  return val;
}

const _$ProviderEnumEnumMap = {
  ProviderEnum.googleOauth2: 'google-oauth2',
};
