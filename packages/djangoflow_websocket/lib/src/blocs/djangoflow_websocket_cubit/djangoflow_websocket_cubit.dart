import 'dart:async';
import 'dart:convert';

import 'package:djangoflow_bloc_extensions/djangoflow_bloc_extensions.dart';
import 'package:djangoflow_websocket/src/json_parsing_exception.dart';
import 'package:flutter/widgets.dart';
import 'package:djangoflow_websocket/src/interfaces/djangoflow_websocket_cubit_base.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

/// DjangoflowWebsocketCubit is a Cubit which manages a websocket connection to a server using [WebSocketChannel].
/// and emits [DjangoflowWebsocketState]s. It also handles automatic reconnection.
class DjangoflowWebsocketCubit extends DjangoflowWebsocketCubitBase
    with SafeEmitMixin {
  DjangoflowWebsocketCubit({required super.config})
      : super(
          const DjangoflowWebsocketState(),
        );
  StreamSubscription? _subscription;
  WebSocketChannel? _channel;
  Timer? _pingTimer;

  /// Connect to a websocket server
  @override
  void connectToUri(Uri uri) {
    emit(
      state.copyWith(
        connectionStateMessage: config.connectingMessage,
      ),
    );
    _connect(uri);
  }

  void _connect(Uri uri) {
    try {
      _channel = WebSocketChannel.connect(uri);

      if (_channel != null) {
        _subscription = _channel!.stream.listen(
          onMessageReceived,
          onDone: () {
            Future.delayed(config.wSCheckConnectionDelay, () {
              if (_channel == null) {
                return;
              }
              _reconnect(uri, config.serverClosedConnectionMessage);
            });
          },
          onError: (err, stackTrace) =>
              _reconnect(uri, config.connectionErrorMessage),
          cancelOnError: true,
        );
        emit(
          state.copyWith(
            connectionStateMessage: null,
          ),
        );
        
        // Start ping if enabled
        if (config.enablePing) {
          _startPing();
        }
      } else {
        _reconnect(uri, config.failedToSubscribeMessage);
      }
    } catch (e) {
      _reconnect(uri, e);
    }
  }

  Future<void> _reconnect(Uri uri, Object? message) async {
    emit(
      state.copyWith(
        connectionStateMessage:
            'Error: ${message?.toString() ?? ""}, will retry',
      ),
    );
    await Future.delayed(config.wSReconnectDelay);
    emit(
      state.copyWith(
        connectionStateMessage: config.reConnectingMessage,
      ),
    );
    _connect(uri);
  }

  @override
  void sendMessage(dynamic message) {
    _channel?.sink.add(message);
  }

  @override
  void onMessageReceived(dynamic message) {
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

  /// Start ping timer
  void _startPing() {
    _stopPing(); // Stop any existing ping timer
    _pingTimer = Timer.periodic(config.pingInterval, (timer) {
      if (_channel != null) {
        final pingData = Map<String, dynamic>.from(config.pingMessage);
        pingData['timestamp'] = DateTime.now().millisecondsSinceEpoch;
        sendMessage(jsonEncode(pingData));
      }
    });
  }

  /// Stop ping timer
  void _stopPing() {
    _pingTimer?.cancel();
    _pingTimer = null;
  }

  /// Disconnect from the websocket server
  @override
  void disconnect({int? closeCode, String? closeReason}) {
    _stopPing();
    _channel?.sink.close(closeCode ?? status.normalClosure, closeReason);
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
