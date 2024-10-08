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
      session: _$JsonConverterFromJson<Map<String, dynamic>, OdooSession>(
          json['session'], const OdooSessionConverter().fromJson),
      dbList:
          (json['dbList'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DjangoflowOdooAuthStateImplToJson(
        _$DjangoflowOdooAuthStateImpl instance) =>
    <String, dynamic>{
      'status': _$AuthStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
      'baseUrl': instance.baseUrl,
      'database': instance.database,
      'session': _$JsonConverterToJson<Map<String, dynamic>, OdooSession>(
          instance.session, const OdooSessionConverter().toJson),
      'dbList': instance.dbList,
    };

const _$AuthStatusEnumMap = {
  AuthStatus.initial: 'initial',
  AuthStatus.unauthenticated: 'unauthenticated',
  AuthStatus.authenticated: 'authenticated',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
