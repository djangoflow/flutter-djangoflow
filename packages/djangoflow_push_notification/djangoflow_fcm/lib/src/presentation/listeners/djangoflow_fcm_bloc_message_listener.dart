import 'package:djangoflow_fcm/src/presentation/listeners/djangoflow_fcm_bloc_listener.dart';

class DjangoflowFCMBlocMessageListener extends DjangoflowFCMBlocListener {
  DjangoflowFCMBlocMessageListener({
    required super.listener,
    super.key,
    super.child,
  }) : super(
          listenWhen: (prev, current) =>
              prev.remoteMessage != current.remoteMessage,
        );
}
