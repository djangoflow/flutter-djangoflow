import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:djangoflow_firebase_messaging/djangoflow_firebase_messaging.dart';
import 'package:djangoflow_firebase_messaging/src/app_state.dart';
import 'package:flutter/foundation.dart';

/// Internal implementation class
class DjangoflowFCMService {
  ///Firebase Messaging instance
  static final _fcm = FirebaseMessaging.instance;

  /// [_fcm] getter
  static get fcm => _fcm;

  /// Returns the default FCM token for this device.
  /// On web, a vapidKey is required.
  static String? _fcmToken;

  /// [_fcmToken] getter
  static String? get fcmToken => _fcmToken;

  /// {@macro enableLogs}
  static bool _enableLogs = kDebugMode;

  /// Stream to listen to token refresh event.
  static Stream<String> get onTokenRefresh => _fcm.onTokenRefresh;

  static StreamSubscription<RemoteMessage>? _messagingSubscription;
  static StreamSubscription<RemoteMessage>? _appOpenMessageSubscription;

  /// {@macro onMessageTap}
  static RemoteMessageCallback? _onMessageTap;

  /// {@macro onOpenNotificationArrive}
  static RemoteMessageCallback? _onOpenNotificationArrive;

  /// {@macro onFCMTokenRefresh}
  static FCMTokenCallback? _onFCMTokenRefresh;

  /// Initialize the implementation class
  static Future<void> initialize({
    String? vapidKey,
    bool? enableLogs,
    RemoteMessageCallback? onMessageTap,
    RemoteMessageCallback? onOpenNotificationArrive,
    FCMTokenCallback? onFCMTokenInitialize,
    FCMTokenCallback? onFCMTokenRefresh,
  }) async {
    _onMessageTap = onMessageTap;
    _enableLogs = enableLogs ?? kDebugMode;
    _onOpenNotificationArrive = onOpenNotificationArrive;
    _onFCMTokenRefresh = onFCMTokenRefresh;

    await requestPermission();

    _fcmToken = await initializeFCMToken(vapidKey: vapidKey);

    final appClosedMessage = await _fcm.getInitialMessage();
    if (appClosedMessage != null) {
      _onMessageOpenedApp(appClosedMessage);
    }

    onFCMTokenInitialize?.call(fcmToken);

    /// Registering the listeners
    _messagingSubscription = FirebaseMessaging.onMessage.listen(_onMessage);
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
    _appOpenMessageSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);
  }

  ///Token obtain/refresh
  static Future<String?> initializeFCMToken({
    String? vapidKey,
  }) async {
    _fcmToken ??= await _fcm.getToken(vapidKey: kIsWeb ? vapidKey : null);

    if (_enableLogs && _fcmToken != null) {
      fcmTokenLog(_fcmToken!);
    }

    onTokenRefresh.listen(
      (token) {
        _fcmToken = token;
        _onFCMTokenRefresh?.call(fcmToken);
        if (_enableLogs && _fcmToken != null) {
          fcmTokenLog(_fcmToken!, refresh: true);
        }
      },
    );

    return _fcmToken;
  }

  /// [_onMessage] callback for the notification
  static Future<void> _onMessage(RemoteMessage message) =>
      _notificationHandler(message, appState: AppState.foreground);

  /// [_onBackgroundMessage] callback for the notification
  static Future<void> _onBackgroundMessage(RemoteMessage message) =>
      _notificationHandler(message, appState: AppState.background);

  /// [_onMessageOpenedApp] callback for the notification
  static Future<void> _onMessageOpenedApp(RemoteMessage message) =>
      _notificationHandler(message, appState: AppState.closed);

  /// [_notificationHandler] implementation
  static Future<void> _notificationHandler(
    RemoteMessage message, {
    required AppState appState,
  }) async {
    if (_enableLogs) {
      debugPrint("""\n
    ******************************************************* 
    *                 NEW NOTIFICATION                    *
    *******************************************************
    Title: ${message.notification?.title}
    Body: ${message.notification?.body}
    Payload: ${message.data}
    AppState: ${appState.name}
    *******************************************************\n
""");
    }

    if (appState == AppState.foreground) {
      _onOpenNotificationArrive?.call(message);
    } else if (appState == AppState.closed) {
      _onMessageTap?.call(message);
    }
  }

  ///Disposing [StreamSubscription] to avoid memory leaks
  static void cancelSubscriptions() {
    _messagingSubscription?.cancel();
    _appOpenMessageSubscription?.cancel();
  }

  ///Handle permissions
  static Future requestPermission() async {
    NotificationSettings settings = await _fcm.getNotificationSettings();
    AuthorizationStatus authorizationStatus = settings.authorizationStatus;

    if (authorizationStatus == AuthorizationStatus.denied) {
      AppSettings.openNotificationSettings();
    } else if (authorizationStatus == AuthorizationStatus.notDetermined) {
      _fcm.requestPermission();
    }
  }

  static void fcmTokenLog(String fcmToken, {bool refresh = false}) {
    String action = refresh ? "updated" : "initialized";
    debugPrint("\n FCM Token $action : $_fcmToken \n");
  }
}
