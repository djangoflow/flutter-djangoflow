import 'package:djangoflow_websocket/src/interfaces/djangoflow_websocket_cubit_base.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [DjangoflowWebsocketBlocBuilder] is basically a [BlocBuilder<DjangoflowWebsocketCubit, DjangoflowWebsocketState>] widget
/// that makes it easier to use.
class DjangoflowWebsocketBlocBuilder<C extends DjangoflowWebsocketCubitBase>
    extends BlocBuilder<C, DjangoflowWebsocketState> {
  const DjangoflowWebsocketBlocBuilder({
    required super.builder, super.key,
    super.buildWhen,
    super.bloc,
  });
}
