import 'package:djangoflow_fcm/src/presentation/listeners/djangoflow_fcm_bloc_listener.dart';

class DjangoflowFCMBlocTokenListener extends DjangoflowFCMBlocListener {
  DjangoflowFCMBlocTokenListener({
    required super.listener,
    super.key,
    super.child,
  }) : super(
          listenWhen: (prev, current) =>
              prev.token != current.token ||
              prev.notificationAuthorizationStatus !=
                  current.notificationAuthorizationStatus,
        );
}
