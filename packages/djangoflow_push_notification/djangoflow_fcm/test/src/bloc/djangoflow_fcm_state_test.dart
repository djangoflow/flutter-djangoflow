import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DjangoflowFCMState', () {
    const remoteMessage = RemoteMessage();
    const token = 'token';
    const notificationAuthorizationStatus = AuthorizationStatus.authorized;

    test('DjangoflowFCMState', () {
      const state = DjangoflowFCMState(
        remoteMessage: remoteMessage,
        token: token,
        notificationAuthorizationStatus: notificationAuthorizationStatus,
      );
      expect(state.remoteMessage, remoteMessage);
      expect(state.token, token);
      expect(state.notificationAuthorizationStatus,
          notificationAuthorizationStatus);
    });
  });
}
