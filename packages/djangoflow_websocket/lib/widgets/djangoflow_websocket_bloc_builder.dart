import 'package:djangoflow_websocket/blocs/djangoflow_websocket_cubit/djangoflow_websocket_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [DjangoflowWebsocketBlocBuilder] is basically a [BlocBuilder<DjangoflowWebsocketCubit, DjangoflowWebsocketState>] widget
/// that makes it easier to use.
class DjangoflowWebsocketBlocBuilder
    extends BlocBuilder<DjangoflowWebsocketCubit, DjangoflowWebsocketState> {
  const DjangoflowWebsocketBlocBuilder({
    super.key,
    required super.builder,
    super.buildWhen,
    super.bloc,
  });
}
