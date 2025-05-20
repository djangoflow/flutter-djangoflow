// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Initial _$InitialFromJson(Map<String, dynamic> json) => _Initial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$InitialToJson(_Initial instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_Authenticated _$AuthenticatedFromJson(Map<String, dynamic> json) =>
    _Authenticated(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AuthenticatedToJson(_Authenticated instance) =>
    <String, dynamic>{
      'token': instance.token,
      'runtimeType': instance.$type,
    };

_Unauthenticated _$UnauthenticatedFromJson(Map<String, dynamic> json) =>
    _Unauthenticated(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnauthenticatedToJson(_Unauthenticated instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
