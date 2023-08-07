// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => _$_Initial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Authenticated _$$_AuthenticatedFromJson(Map<String, dynamic> json) =>
    _$_Authenticated(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthenticatedToJson(_$_Authenticated instance) =>
    <String, dynamic>{
      'token': instance.token,
      'runtimeType': instance.$type,
    };

_$_Unauthenticated _$$_UnauthenticatedFromJson(Map<String, dynamic> json) =>
    _$_Unauthenticated(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UnauthenticatedToJson(_$_Unauthenticated instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
