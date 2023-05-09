import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_websocket_state.freezed.dart';
part 'chat_websocket_state.g.dart';

@freezed
class ChatWebsocketState with _$ChatWebsocketState {
  const factory ChatWebsocketState({
    Map<String, dynamic>? message,
    String? connectionStateMessage,
  }) = _ChatWebsocketState;

  factory ChatWebsocketState.fromJson(Map<String, dynamic> json) =>
      _$ChatWebsocketStateFromJson(json);
}
