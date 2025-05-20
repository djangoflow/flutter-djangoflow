import 'package:firebase_messaging/firebase_messaging.dart';

const testNotificationSettings = NotificationSettings(
  alert: AppleNotificationSetting.enabled,
  badge: AppleNotificationSetting.enabled,
  sound: AppleNotificationSetting.enabled,
  announcement: AppleNotificationSetting.enabled,
  authorizationStatus: AuthorizationStatus.authorized,
  carPlay: AppleNotificationSetting.enabled,
  criticalAlert: AppleNotificationSetting.enabled,
  lockScreen: AppleNotificationSetting.enabled,
  notificationCenter: AppleNotificationSetting.enabled,
  showPreviews: AppleShowPreviewSetting.always,
  timeSensitive: AppleNotificationSetting.enabled,
  providesAppNotificationSettings: AppleNotificationSetting.notSupported,
);
