// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'djangoflow_odoo_auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DjangoflowOdooAuthStateImpl _$$DjangoflowOdooAuthStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DjangoflowOdooAuthStateImpl(
      status: $enumDecodeNullable(_$AuthStatusEnumMap, json['status']) ??
          AuthStatus.initial,
      errorMessage: json['errorMessage'] as String?,
      baseUrl: json['baseUrl'] as String?,
      database: json['database'] as String?,
      session: const SessionConverter()
          .fromJson(json['session'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$DjangoflowOdooAuthStateImplToJson(
        _$DjangoflowOdooAuthStateImpl instance) =>
    <String, dynamic>{
      'status': _$AuthStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
      'baseUrl': instance.baseUrl,
      'database': instance.database,
      'session': const SessionConverter().toJson(instance.session),
    };

const _$AuthStatusEnumMap = {
  AuthStatus.initial: 'initial',
  AuthStatus.unauthenticated: 'unauthenticated',
  AuthStatus.authenticated: 'authenticated',
  AuthStatus.error: 'error',
};
