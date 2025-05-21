// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'djangoflow_websocket_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DjangoflowWebsocketState _$DjangoflowWebsocketStateFromJson(
        Map<String, dynamic> json) =>
    _DjangoflowWebsocketState(
      message: json['message'] as Map<String, dynamic>?,
      connectionStateMessage: json['connectionStateMessage'] as String?,
    );

Map<String, dynamic> _$DjangoflowWebsocketStateToJson(
        _DjangoflowWebsocketState instance) =>
    <String, dynamic>{
      'message': instance.message,
      'connectionStateMessage': instance.connectionStateMessage,
    };
