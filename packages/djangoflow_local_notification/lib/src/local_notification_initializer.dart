import 'dart:io';

import 'package:djangoflow_local_notification/src/utils/extensions/push_action_category_extensions.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// `NotificationInitializer` is a class that helps you initialize the local notification plugin.
/// It is a wrapper around the `FlutterLocalNotificationsPlugin` class.
/// It also makes sure to initialize the plugin only once.
class NotificationInitializer {
  NotificationInitializer({
    this.onDidReceiveBackgroundNotificationResponse,
    this.requestAlertPermission = false,
    this.requestBadgePermission = false,
    this.requestCriticalPermission = false,
    this.requestSoundPermission = false,
  });
  final DidReceiveBackgroundNotificationResponseCallback?
      onDidReceiveBackgroundNotificationResponse;
  final bool requestAlertPermission;
  final bool requestBadgePermission;
  final bool requestCriticalPermission;
  final bool requestSoundPermission;

  FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;
  FlutterLocalNotificationsPlugin? get flutterLocalNotificationsPlugin =>
      _flutterLocalNotificationsPlugin;

  bool _hasInitialized = false;
  bool get hasInitialized => _hasInitialized;

  Future<bool?> initialize({
    required List<PushActionCategory> pushActions,
    required String defaultAndroidNotificationIcon,
    bool? forceInitialize,
    DidReceiveLocalNotificationCallback? onDidReceiveLocalNotification,
    DidReceiveNotificationResponseCallback? onDidReceiveNotificationResponse,
  }) async {
    if (_hasInitialized == false || forceInitialize == true) {
      AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings(defaultAndroidNotificationIcon);
      final DarwinInitializationSettings initializationSettingsDarwin =
          DarwinInitializationSettings(
        notificationCategories: pushActions.toDarwinNotificationCategoryList(),
        onDidReceiveLocalNotification: onDidReceiveLocalNotification,
        requestAlertPermission: requestAlertPermission,
        requestBadgePermission: requestBadgePermission,
        requestCriticalPermission: requestCriticalPermission,
        requestSoundPermission: requestSoundPermission,
      );
      final InitializationSettings initializationSettings =
          InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,
      );
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      if (_flutterLocalNotificationsPlugin != null) {
        final result = await _flutterLocalNotificationsPlugin?.initialize(
          initializationSettings,
          onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
          onDidReceiveBackgroundNotificationResponse:
              onDidReceiveBackgroundNotificationResponse,
        );

        _hasInitialized = result ?? false;

        return _hasInitialized;
      }
    } else {
      debugPrint('LocalNotification has already been initialized');
      return _hasInitialized;
    }
    return false;
  }

  Future<bool?> requestPermissions() async {
    if (Platform.isIOS || Platform.isMacOS) {
      if (Platform.isIOS) {
        return await _flutterLocalNotificationsPlugin
            ?.resolvePlatformSpecificImplementation<
                IOSFlutterLocalNotificationsPlugin>()
            ?.requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            );
      } else {
        return await _flutterLocalNotificationsPlugin
            ?.resolvePlatformSpecificImplementation<
                MacOSFlutterLocalNotificationsPlugin>()
            ?.requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            );
      }
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          _flutterLocalNotificationsPlugin
              ?.resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>();

      final bool? grantedNotificationPermission =
          await androidImplementation?.requestPermission();
      return grantedNotificationPermission;
    }
    return null;
  }
}
