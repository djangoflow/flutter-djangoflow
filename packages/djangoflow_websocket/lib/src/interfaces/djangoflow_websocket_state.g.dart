// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'djangoflow_websocket_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DjangoflowWebsocketStateImpl _$$DjangoflowWebsocketStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DjangoflowWebsocketStateImpl(
      message: json['message'] as Map<String, dynamic>?,
      connectionStateMessage: json['connectionStateMessage'] as String?,
    );

Map<String, dynamic> _$$DjangoflowWebsocketStateImplToJson(
        _$DjangoflowWebsocketStateImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'connectionStateMessage': instance.connectionStateMessage,
    };
