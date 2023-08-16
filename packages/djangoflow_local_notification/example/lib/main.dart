import 'dart:convert';

import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter/material.dart';
import 'package:djangoflow_local_notification/djangoflow_local_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

@pragma('vm:entry-point')
Future<void> _handleBackgroundNotificationTap(
    NotificationResponse notificationResponse) async {
  debugPrint('===Background Tap===');
  debugPrint('Notification tapped via -> ${notificationResponse.actionId!}');
  debugPrint('Notification payload: ${notificationResponse.payload}');
}

final pushActionCategories = [
  PushActionCategory(
    name: 'NewsCategory',
    actions: [
      PushAction(
        name: 'read_action',
        authenticationRequired: false,
        destructive: false,
        buttonText: 'Read',
      ),
      PushAction(
        name: 'delete_action',
        authenticationRequired: false,
        destructive: true,
        buttonText: 'Delete',
      ),
    ],
  ),
];
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalNotificationCubit.instance.initialize(
    notificationInitializer: NotificationInitializer(
      onDidReceiveBackgroundNotificationResponse:
          _handleBackgroundNotificationTap,
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestCriticalPermission: true,
      requestSoundPermission: true,
    ),
    pushActions: pushActionCategories,
    defaultAndroidNotificationIcon: 'ic_launcher',
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    LocalNotificationCubit.instance.notificationInitializer
        ?.requestPermissions();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocListener<LocalNotificationCubit, LocalNotificationState>(
        bloc: LocalNotificationCubit.instance,
        listener: (context, state) {
          final notificationResponse = state.notificationResponse;
          final payload = notificationResponse?.payload;
          if (notificationResponse != null) {
            final payloadMap = payload != null ? jsonDecode(payload) : null;
            debugPrint(
                'Notification tapped via action -> ${notificationResponse.actionId}!');

            debugPrint('Notification payload: $payloadMap');
          }
        },
        child: Scaffold(
          body: Center(
            child: TextButton(
              onPressed: () {
                LocalNotificationCubit.instance.displayNotification(
                  title: 'Title',
                  body: 'Body',
                  payload: '{"some_key": "some_value"}',
                  notificationDetailsBuilder: () async {
                    return NotificationDetails(
                      android: AndroidNotificationDetails(
                        'channel id',
                        'channel name',
                        importance: Importance.max,
                        priority: Priority.high,
                        showWhen: false,
                        actions:
                            pushActionCategories.toAndroidNotificationActions(
                          'NewsCategory',
                          destructiveColor: Colors.red,
                        ),
                        enableVibration: true,
                        playSound: true,
                      ),
                      iOS: const DarwinNotificationDetails(
                        interruptionLevel: InterruptionLevel.active,
                        categoryIdentifier: 'NewsCategory',
                        presentAlert: true,
                        presentBadge: true,
                        presentSound: true,
                      ),
                    );
                  },
                  id: 1,
                );
              },
              child: const Text('Show Notification'),
            ),
          ),
        ),
      ),
    );
  }
}
