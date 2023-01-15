import 'package:djangoflow_fcm/src/presentation/listeners/djangoflow_fcm_bloc_listener.dart';

class DjangoflowFCMBlocTokenListener extends DjangoflowFCMBlocListener {
  DjangoflowFCMBlocTokenListener({
    super.key,
    super.child,
    required super.listener,
  }) : super(
          listenWhen: (prev, current) =>
              prev.token != current.token ||
              prev.notificationAuthorizationStatus !=
                  current.notificationAuthorizationStatus,
        );
}
