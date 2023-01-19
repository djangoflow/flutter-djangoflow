import 'package:firebase_messaging/firebase_messaging.dart';

class DjangoflowFCMRepository {
  // TODO pass it from constrcutor to make it easily testable
  final _messaging = FirebaseMessaging.instance;
  final String? vapidKey;

  DjangoflowFCMRepository({this.vapidKey});

  Stream<RemoteMessage> getForegroundRemoteMessageStream() =>
      FirebaseMessaging.onMessage;

  Future<RemoteMessage?> getIntialRemoteMessage() =>
      FirebaseMessaging.instance.getInitialMessage();

  Stream<RemoteMessage> getBackgroundRemoteMessageTappedStream() =>
      FirebaseMessaging.onMessageOpenedApp;

  Future<NotificationSettings> requestNotificationPermission() =>
      _messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

  Future<String?> getToken() => _messaging.getToken(vapidKey: vapidKey);

  Stream<String> getTokenUpdateStream() => _messaging.onTokenRefresh;

  Future<void> deleteToken() => _messaging.deleteToken();

  Future<bool> isSupported() => _messaging.isSupported();
}
