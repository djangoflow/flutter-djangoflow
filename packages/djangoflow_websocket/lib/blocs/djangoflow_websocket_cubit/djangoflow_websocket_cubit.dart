import 'dart:async';
import 'dart:convert';

import 'package:djangoflow_websocket/utils/mixins/cubit_maybe_emit_mixin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

import 'djangoflow_websocket_state.dart';
export 'djangoflow_websocket_state.dart';

const _connectingMessage = 'Connecting....';
const _reConnectingMessage = 'Re-connecting....';
const _failedToSubscribeMessage = 'failed to subscribe';
const _connectionErrorMessage = 'connection error';
const _serverClosedConnectionMessage = 'server closed connection';
const _wSReconnectDelay = Duration(milliseconds: 5000);
const _wSCheckConnectionDelay = Duration(milliseconds: 100);

/// DjangoflowWebsocketCubit is a Cubit which manages a websocket connection to a server.
/// and emits [DjangoflowWebsocketState]s. It also handles automatic reconnection.
class DjangoflowWebsocketCubit extends Cubit<DjangoflowWebsocketState>
    with CubitMaybeEmit {
  StreamSubscription? _subscription;
  WebSocketChannel? _channel;

  DjangoflowWebsocketCubit() : super(const DjangoflowWebsocketState());

  /// Connect to a websocket server
  void connectToUri(Uri uri) {
    emit(state.copyWith(
      connectionStateMessage: _connectingMessage,
    ));
    _connect(uri);
  }

  void _connect(Uri uri) {
    try {
      _channel = WebSocketChannel.connect(uri);

      if (_channel != null) {
        _subscription = _channel!.stream.listen(
          _onMessageReceived,
          onDone: () {
            Future.delayed(_wSCheckConnectionDelay, () {
              if (_channel == null) {
                return;
              }
              _reconnect(uri, _serverClosedConnectionMessage);
            });
          },
          onError: (err, stackTrace) =>
              _reconnect(uri, _connectionErrorMessage),
          cancelOnError: true,
        );
        emit(state.copyWith(
          connectionStateMessage: null,
        ));
      } else {
        _reconnect(uri, _failedToSubscribeMessage);
      }
    } catch (e) {
      _reconnect(uri, e);
    }
  }

  Future<void> _reconnect(Uri uri, Object? message) async {
    emit(state.copyWith(
      connectionStateMessage: 'Error: ${message?.toString() ?? ""}, will retry',
    ));
    await Future.delayed(_wSReconnectDelay);
    emit(state.copyWith(
      connectionStateMessage: _reConnectingMessage,
    ));
    _connect(uri);
  }

  void _onMessageReceived(dynamic message) {
    try {
      final data = jsonDecode(message);
      emit(
        state.copyWith(
          message: data,
        ),
      );
    } catch (e) {
      debugPrint('Error decoding JSON: $e');
      throw JsonParsingException(e.toString());
    }
  }

  /// Disconnect from the websocket server
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

/// Exception class to catch json parsing errors
class JsonParsingException implements Exception {
  final String? stackTrace;
  JsonParsingException(this.stackTrace);
}
