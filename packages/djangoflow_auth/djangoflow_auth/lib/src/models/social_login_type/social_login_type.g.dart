// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialLoginType _$SocialLoginTypeFromJson(Map<String, dynamic> json) =>
    _SocialLoginType(
      provider: $enumDecode(_$ProviderEnumEnumMap, json['provider']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$SocialLoginTypeToJson(_SocialLoginType instance) =>
    <String, dynamic>{
      'provider': _$ProviderEnumEnumMap[instance.provider]!,
      'id': instance.id,
    };

const _$ProviderEnumEnumMap = {
  ProviderEnum.googleOauth2: 'google-oauth2',
};
