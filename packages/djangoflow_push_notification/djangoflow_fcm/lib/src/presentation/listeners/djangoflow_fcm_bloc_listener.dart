import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DjangoflowFCMBlocListener
    extends BlocListener<DjangoflowFCMBloc, DjangoflowFCMState> {
  DjangoflowFCMBlocListener({
    super.key,
    super.child,
    required super.listener,
    BlocListenerCondition<DjangoflowFCMState>? listenWhen,
  }) : super(listenWhen: listenWhen ?? (prev, current) => prev != current);
}
