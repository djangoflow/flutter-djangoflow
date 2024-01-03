import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DjangoflowFCMBlocListener
    extends BlocListener<DjangoflowFCMBloc, DjangoflowFCMState> {
  DjangoflowFCMBlocListener({
    required super.listener,
    super.key,
    super.child,
    BlocListenerCondition<DjangoflowFCMState>? listenWhen,
  }) : super(listenWhen: listenWhen ?? (prev, current) => prev != current);
}
