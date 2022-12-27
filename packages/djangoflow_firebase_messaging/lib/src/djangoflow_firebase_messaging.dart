import 'dart:async';

import 'package:djangoflow_firebase_messaging/src/app_state.dart';
import 'package:djangoflow_firebase_messaging/src/fcm_service.dart';
import 'package:djangoflow_firebase_messaging/src/typedefs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///
/// Base DjangoflowFirebaseNotificationHandler
///
class DjangoflowFirebaseNotificationHandler extends StatefulWidget {
  /// The child of the widget. Typically an [App] from [df_app] package.
  final Widget child;

  /// {@template onOpenNotificationArrive}
  /// This callback is triggered when the a new notification arrives
  /// when the app is open i.e. appState is [AppState.foreground].
  /// {@endtemplate}
  final RemoteMessageCallback? onOpenNotificationArrive;

  /// {@template onMessageTap}
  /// Notification tap Callback
  /// {@endtemplate}
  final RemoteMessageCallback? onMessageTap;

  ///FCM Token init Callback
  final FCMTokenCallback? onFCMTokenInitialize;

  /// {@template onFCMTokenRefresh}
  ///FCM Token refresh Callback
  /// {@endtemplate}
  final FCMTokenCallback? onFCMTokenRefresh;

  /// On web, a [vapidKey] is required to fetch the default FCM token for the device.
  /// The fcm token can be accessed from the [onFCMTokenInitialize] or [onFCMTokenRefresh] callbacks.
  final String? vapidKey;

  /// {@template enableLogs}
  /// Enable printing of logs related to FCM events
  /// {@endtemplate}
  final bool? enableLogs;

  const DjangoflowFirebaseNotificationHandler({
    super.key,
    required this.child,
    this.onOpenNotificationArrive,
    this.onMessageTap,
    this.onFCMTokenInitialize,
    this.onFCMTokenRefresh,
    this.vapidKey,
    this.enableLogs,
  }) : assert(
          vapidKey != null || kIsWeb == false,
          'A valid vapid key must be provided for fcm integration in flutter web',
        );

  @override
  State<DjangoflowFirebaseNotificationHandler> createState() =>
      _DjangoflowFirebaseNotificationHandlerState();
}

class _DjangoflowFirebaseNotificationHandlerState
    extends State<DjangoflowFirebaseNotificationHandler> {
  @override
  void initState() {
    init();
    super.initState();
  }

  ///Initialize [DjangoflowFCMService] and subscribe to tokenRefresh stream
  Future init() async {
    await DjangoflowFCMService.initialize(
      vapidKey: widget.vapidKey,
      enableLogs: widget.enableLogs,
      onMessageTap: widget.onMessageTap,
      onOpenNotificationArrive: widget.onOpenNotificationArrive,
      onFCMTokenInitialize: widget.onFCMTokenInitialize,
      onFCMTokenRefresh: widget.onFCMTokenRefresh,
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;

  ///Disposing [StreamSubscription] to avoid memory leaks
  @override
  void dispose() {
    DjangoflowFCMService.cancelSubscriptions();
    super.dispose();
  }
}
