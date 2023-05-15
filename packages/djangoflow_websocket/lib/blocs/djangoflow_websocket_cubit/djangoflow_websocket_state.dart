import 'package:freezed_annotation/freezed_annotation.dart';

part 'djangoflow_websocket_state.freezed.dart';
part 'djangoflow_websocket_state.g.dart';

/// [DjangoflowWebsocketState] is the state emitted by [DjangoflowWebsocketCubit]
/// It contains the last message received from the server and the connection state message
@freezed
class DjangoflowWebsocketState with _$DjangoflowWebsocketState {
  const factory DjangoflowWebsocketState({
    /// The last message received from the server
    Map<String, dynamic>? message,

    /// Connection state message
    String? connectionStateMessage,
  }) = _DjangoflowWebsocketState;

  factory DjangoflowWebsocketState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowWebsocketStateFromJson(json);
}
