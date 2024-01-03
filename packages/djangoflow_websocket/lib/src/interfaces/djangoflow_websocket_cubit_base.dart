import 'package:bloc/bloc.dart';
import 'package:djangoflow_websocket/src/models/djangoflow_websocket_config.dart';

import 'package:djangoflow_websocket/src/interfaces/djangoflow_websocket_state.dart';
export 'djangoflow_websocket_state.dart';

abstract class DjangoflowWebsocketCubitBase
    extends Cubit<DjangoflowWebsocketState> {
  DjangoflowWebsocketCubitBase(
    super.initialState, {
    required this.config,
  });
  final DjangoflowWebsocketConfig config;

  /// [connectToUri] is called to connect to a websocket server
  void connectToUri(Uri uri);

  /// [onMessageReceived] is called when a message is received from the server
  void onMessageReceived(dynamic message);

  void sendMessage(dynamic message);

  /// [sendMessage] is called to disconnect from the websocket server
  void disconnect({int? closeCode, String? closeReason});
}
