import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'djangoflow_fcm_state.freezed.dart';

@Freezed(
  toJson: false,
  fromJson: false,
)
abstract class DjangoflowFCMState with _$DjangoflowFCMState {
  const factory DjangoflowFCMState({
    RemoteMessage? remoteMessage,
    String? token,
    AuthorizationStatus? notificationAuthorizationStatus,
    bool? remoteMessageOpenedApp,
  }) = _DjangoflowFCMState;
}
