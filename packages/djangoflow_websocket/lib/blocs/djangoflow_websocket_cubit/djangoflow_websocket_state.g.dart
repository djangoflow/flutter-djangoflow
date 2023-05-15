// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'djangoflow_websocket_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DjangoflowWebsocketState _$$_DjangoflowWebsocketStateFromJson(
        Map<String, dynamic> json) =>
    _$_DjangoflowWebsocketState(
      message: json['message'] as Map<String, dynamic>?,
      connectionStateMessage: json['connectionStateMessage'] as String?,
    );

Map<String, dynamic> _$$_DjangoflowWebsocketStateToJson(
        _$_DjangoflowWebsocketState instance) =>
    <String, dynamic>{
      'message': instance.message,
      'connectionStateMessage': instance.connectionStateMessage,
    };
