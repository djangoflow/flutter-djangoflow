import 'package:djangoflow_websocket/blocs/djangoflow_websocket_cubit/djangoflow_websocket_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [DjangoflowWebsocketBlocListener] is basically a [BlocListener<DjangoflowWebsocketCubit, DjangoflowWebsocketState>]
/// that makes it easier to use.
/// By default(if null) [listenWhen] is set to (previous, current) => previous != current
class DjangoflowWebsocketBlocListener
    extends BlocListener<DjangoflowWebsocketCubit, DjangoflowWebsocketState> {
  DjangoflowWebsocketBlocListener({
    super.key,
    required super.listener,
    super.bloc,
    super.child,
    BlocListenerCondition<DjangoflowWebsocketState>? listenWhen,
  }) : super(
          listenWhen: listenWhen ?? (previous, current) => previous != current,
        );
}
