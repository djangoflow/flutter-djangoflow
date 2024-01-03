import 'package:firebase_messaging/firebase_messaging.dart';

class DjangoflowFCMRepository {

  DjangoflowFCMRepository(this._messaging, {this.vapidKey});
  final FirebaseMessaging _messaging;
  final String? vapidKey;

  Stream<RemoteMessage> getForegroundRemoteMessageStream() =>
      FirebaseMessaging.onMessage;

  Future<RemoteMessage?> getInitialRemoteMessage() =>
      _messaging.getInitialMessage();

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

  Future<NotificationSettings> getNotificationSettings() =>
      _messaging.getNotificationSettings();
}
