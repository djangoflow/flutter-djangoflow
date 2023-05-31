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
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          accessToken: $checkedConvert('access_token', (v) => v as String),
          provider: $checkedConvert('provider', (v) => v as bool),
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
  val['access_token'] = instance.accessToken;
  val['provider'] = instance.provider;
  return val;
}
