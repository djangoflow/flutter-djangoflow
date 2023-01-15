import 'package:djangoflow_fcm/src/presentation/listeners/djangoflow_fcm_bloc_listener.dart';

class DjangoflowFCMBlocMessageListener extends DjangoflowFCMBlocListener {
  DjangoflowFCMBlocMessageListener({
    super.key,
    super.child,
    required super.listener,
  }) : super(
            listenWhen: (prev, current) =>
                prev.remoteMessage != current.remoteMessage);
}
