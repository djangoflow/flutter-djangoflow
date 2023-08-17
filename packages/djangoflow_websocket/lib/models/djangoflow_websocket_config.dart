import 'package:freezed_annotation/freezed_annotation.dart';

part 'djangoflow_websocket_config.freezed.dart';

@freezed
class DjangoflowWebsocketConfig with _$DjangoflowWebsocketConfig {
  const factory DjangoflowWebsocketConfig({
    @Default('Connecting....') String connectingMessage,
    @Default('Re-connecting....') String reConnectingMessage,
    @Default('failed to subscribe') String failedToSubscribeMessage,
    @Default('connection error') String connectionErrorMessage,
    @Default('server closed connection') String serverClosedConnectionMessage,
    @Default(Duration(milliseconds: 5000)) Duration wSReconnectDelay,
    @Default(Duration(milliseconds: 100)) Duration wSCheckConnectionDelay,
  }) = _DjangoflowWebsocketState;
}
