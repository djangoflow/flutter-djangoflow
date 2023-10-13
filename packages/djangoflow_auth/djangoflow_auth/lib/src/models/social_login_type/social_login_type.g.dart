// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialLoginTypeImpl _$$SocialLoginTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginTypeImpl(
      provider: $enumDecode(_$ProviderEnumEnumMap, json['provider']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SocialLoginTypeImplToJson(
        _$SocialLoginTypeImpl instance) =>
    <String, dynamic>{
      'provider': _$ProviderEnumEnumMap[instance.provider]!,
      'id': instance.id,
    };

const _$ProviderEnumEnumMap = {
  ProviderEnum.googleOauth2: 'google-oauth2',
};
