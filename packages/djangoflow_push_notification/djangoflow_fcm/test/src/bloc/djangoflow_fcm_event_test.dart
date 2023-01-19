import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DjangoflowFCMEvent', () {
    test('DjangoflowFCMOnMessageReceived', () {
      const remoteMessage = RemoteMessage();
      final event = DjangoflowFCMOnMessageReceived(remoteMessage);
      expect(event.remoteMessage, remoteMessage);
    });

    test('DjangoflowFCMTokenRequested', () {
      final event = DjangoflowFCMTokenRequested();
      expect(event, isA<DjangoflowFCMTokenRequested>());
    });

    test('DjangoflowFCMOnTokenReceived', () {
      const token = 'token';
      final event = DjangoflowFCMOnTokenReceived(token);
      expect(event.token, token);
    });

    test('DjangoflowFCMIntialMessageRequested', () {
      final event = DjangoflowFCMIntialMessageRequested();
      expect(event, isA<DjangoflowFCMIntialMessageRequested>());
    });
  });
}
