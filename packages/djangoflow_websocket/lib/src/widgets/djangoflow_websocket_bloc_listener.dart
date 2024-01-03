import 'package:djangoflow_websocket/src/interfaces/djangoflow_websocket_cubit_base.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [DjangoflowWebsocketBlocListener] is basically a [BlocListener<DjangoflowWebsocketCubit, DjangoflowWebsocketState>]
/// that makes it easier to use.
/// By default(if null) [listenWhen] is set to (previous, current) => previous != current
class DjangoflowWebsocketBlocListener<C extends DjangoflowWebsocketCubitBase>
    extends BlocListener<C, DjangoflowWebsocketState> {
  DjangoflowWebsocketBlocListener({
    required super.listener, super.key,
    super.bloc,
    super.child,
    BlocListenerCondition<DjangoflowWebsocketState>? listenWhen,
  }) : super(
          listenWhen: listenWhen ?? (previous, current) => previous != current,
        );
}
