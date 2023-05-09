import 'dart:async';
import 'dart:convert';

import 'package:djangoflow_chat/blocs/chat_websocket_cubit/chat_websocket_state.dart';
import 'package:djangoflow_chat/utils/mixins/cubit_maybe_emit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

const _connectingMessage = 'Connecting....';
const _reConnectingMessage = 'Re-connecting....';
const _failedToSubscribeMessage = 'failed to subscribe';
const _connectionErrorMessage = 'connection error';
const _serverClosedConnectionMessage = 'server closed connection';
const _wSReconnectDelay = Duration(milliseconds: 5000);
const _wSCheckConnectionDelay = Duration(milliseconds: 100);

/// A [Cubit] which manages a websocket connection to a chat room.
class ChatWebsocketCubit extends Cubit<ChatWebsocketState> with CubitMaybeEmit {
  /// The base url of the chat server.
  final String _baseUrl;

  /// The token to use for authentication.
  final String? _token;

  /// The id of the chat room.
  final String roomId;

  StreamSubscription? _subscription;
  WebSocketChannel? _channel;

  ChatWebsocketCubit(this._baseUrl, this._token, {required this.roomId})
      : super(const ChatWebsocketState());

  /// Connects to the chat room.
  void connect() {
    emit(state.copyWith(
      connectionStateMessage: _connectingMessage,
    ));
    _connect();
  }

  void _connect() async {
    // In future we may need to allow without token for anonymous users
    if (_token != null) {
      final url = '$_baseUrl/ws/chat/$roomId/?token=$_token';

      try {
        _channel = WebSocketChannel.connect(Uri.parse(url));

        if (_channel != null) {
          _subscription = _channel!.stream.listen(
            _onMessageReceived,
            onDone: () {
              Future.delayed(_wSCheckConnectionDelay, () {
                if (_channel == null) {
                  return;
                }
                _reconnect(_serverClosedConnectionMessage);
              });
            },
            onError: (err, stackTrace) => _reconnect(_connectionErrorMessage),
            cancelOnError: true,
          );
          emit(state.copyWith(
            connectionStateMessage: null,
          ));
        } else {
          _reconnect(_failedToSubscribeMessage);
        }
      } catch (e) {
        _reconnect(e);
      }
    }
  }

  Future<void> _reconnect(Object? message) async {
    emit(state.copyWith(
      connectionStateMessage: 'Error: ${message?.toString() ?? ""}, will retry',
    ));
    await Future.delayed(_wSReconnectDelay);
    emit(state.copyWith(
      connectionStateMessage: _reConnectingMessage,
    ));
    _connect();
  }

  void _onMessageReceived(message) {
    final data = jsonDecode(message);

    emit(state.copyWith(
      message: data,
    ));
  }

  /// Disconnects from the chat room.
  void disconnect() {
    _channel?.sink.close(status.normalClosure);
    _subscription?.cancel();

    _subscription = null;
    _channel = null;
  }

  @override
  Future<void> close() {
    disconnect();
    return super.close();
  }
}
