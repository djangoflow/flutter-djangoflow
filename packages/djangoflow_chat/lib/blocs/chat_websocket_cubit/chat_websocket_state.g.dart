// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_websocket_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatWebsocketState _$$_ChatWebsocketStateFromJson(
        Map<String, dynamic> json) =>
    _$_ChatWebsocketState(
      message: json['message'] as Map<String, dynamic>?,
      connectionStateMessage: json['connectionStateMessage'] as String?,
    );

Map<String, dynamic> _$$_ChatWebsocketStateToJson(
        _$_ChatWebsocketState instance) =>
    <String, dynamic>{
      'message': instance.message,
      'connectionStateMessage': instance.connectionStateMessage,
    };
