// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialLoginType _$$_SocialLoginTypeFromJson(Map<String, dynamic> json) =>
    _$_SocialLoginType(
      provider: $enumDecode(_$ProviderEnumEnumMap, json['provider']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_SocialLoginTypeToJson(_$_SocialLoginType instance) =>
    <String, dynamic>{
      'provider': _$ProviderEnumEnumMap[instance.provider]!,
      'id': instance.id,
    };

const _$ProviderEnumEnumMap = {
  ProviderEnum.googleOauth2: 'google-oauth2',
};
