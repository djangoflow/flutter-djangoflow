import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:djangoflow_local_notification/src/models/notification_data_payload.dart';
import 'package:djangoflow_local_notification/src/utils/extensions/push_action_category_extensions.dart';
import 'package:djangoflow_local_notification/src/utils/mixins/cubit_maybe_emit_mixin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:path_provider/path_provider.dart';
import '../local_notification_initializer.dart';
import 'action_category_cubit.dart';
import 'local_notification_state.dart';

class LocalNotificationCubit extends Cubit<LocalNotificationState>
    with CubitMaybeEmit {
  static LocalNotificationCubit get instance => _instance;
  static final LocalNotificationCubit _instance =
      LocalNotificationCubit._internal();

  LocalNotificationCubit._internal() : super(const LocalNotificationState());

  NotificationInitializer? notificationInitializer;

  Future<bool?> initialize({
    required NotificationInitializer notificationInitializer,
    required List<PushActionCategory> pushActions,
    required String defaultAndroidNotificationIcon,
    bool? forceInitialize,
  }) async {
    this.notificationInitializer = notificationInitializer;
    if (this.notificationInitializer != null) {
      return await this.notificationInitializer?.initialize(
            pushActions: pushActions,
            defaultAndroidNotificationIcon: defaultAndroidNotificationIcon,
            forceInitialize: forceInitialize,
            onDidReceiveLocalNotification: (id, title, body, payload) {
              emit(
                state.copyWith(
                  notificationResponse: NotificationResponse(
                    id: id,
                    payload: payload,
                    notificationResponseType:
                        NotificationResponseType.selectedNotification,
                  ),
                ),
              );
            },
            onDidReceiveNotificationResponse: (details) {
              emit(
                state.copyWith(
                  notificationResponse: details,
                ),
              );
            },
          );
    } else {
      return false;
    }
  }

  Future<void> displayNotification(
      {required RemoteMessage remoteMessage,
      String? androidChannelName}) async {
    final pushActions = ActionCategoryCubit.instance.state.actionCategories;
    final data = remoteMessage.data;
    final notificationDataPayload = NotificationDataPayload.fromJson(data);
    final title = notificationDataPayload.title;
    final body = notificationDataPayload.body;
    final image = notificationDataPayload.image;
    final multiline = notificationDataPayload.multiline;

    if (title != null && body != null) {
      final id = notificationDataPayload.notificationId != null
          ? notificationDataPayload.notificationId.hashCode
          : remoteMessage.messageId?.hashCode;
      final actionCategoryId = notificationDataPayload.actionCategoryId;
      BigPictureStyleInformation? bigPictureStyle;
      BigTextStyleInformation? bigTextStyle;
      DarwinNotificationAttachment? attachment;
      if (image != null) {
        try {
          final downloadedImagePath = await _downloadAndSaveImage(image);
          final bigPicture = FilePathAndroidBitmap(downloadedImagePath);
          attachment = DarwinNotificationAttachment(
            downloadedImagePath,
            hideThumbnail: false,
          );
          bigPictureStyle = BigPictureStyleInformation(
            bigPicture,
            hideExpandedLargeIcon: true,
            contentTitle: title,
            summaryText: body,
          );
        } catch (e) {
          debugPrint('Error downloading image: ${e.toString()}');
        }
      }
      if (multiline == '1') {
        bigTextStyle = BigTextStyleInformation(body);
      }
      final iosBadge = remoteMessage.notification?.apple?.badge;

      notificationInitializer?.flutterLocalNotificationsPlugin?.show(
        id ?? DateTime.now().millisecondsSinceEpoch,
        title,
        body,
        NotificationDetails(
          iOS: DarwinNotificationDetails(
            interruptionLevel:
                remoteMessage.notification?.apple?.sound?.critical == true
                    ? InterruptionLevel.critical
                    : InterruptionLevel.active,
            badgeNumber: iosBadge != null ? int.tryParse(iosBadge) : null,
            sound: remoteMessage.notification?.apple?.sound?.name,
            subtitle: remoteMessage.notification?.apple?.subtitle,
            categoryIdentifier: actionCategoryId,
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
            attachments: attachment != null ? [attachment] : null,
          ),
          android: AndroidNotificationDetails(
            remoteMessage.notification?.android?.channelId ?? 'default',
            androidChannelName ?? 'default',
            actions: actionCategoryId != null
                ? pushActions.toAndroidNotificationActions(actionCategoryId)
                : null,
            styleInformation: bigPictureStyle ?? bigTextStyle,
            priority: remoteMessage.notification?.android?.priority ==
                    AndroidNotificationPriority.highPriority
                ? Priority.high
                : Priority.defaultPriority,
          ),
        ),
        payload: jsonEncode(remoteMessage.data),
      );
    }
  }

  Future<String> _downloadAndSaveImage(String url) async {
    final savePath =
        '${(await getTemporaryDirectory()).path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
    await Dio().downloadUri(Uri.parse(url), savePath);

    return savePath;
  }

  Future<void> checkAndUpdateAppLaunchNotification() async {
    final intialNotificationTap = await notificationInitializer
        ?.flutterLocalNotificationsPlugin
        ?.getNotificationAppLaunchDetails();
    if (intialNotificationTap?.didNotificationLaunchApp == true) {
      emit(state.copyWith(
        notificationResponse: intialNotificationTap?.notificationResponse,
      ));
    }
  }

  Future<void> cancelNotification(String notificationId) async {
    await notificationInitializer?.flutterLocalNotificationsPlugin
        ?.cancel(notificationId.hashCode);
  }
}
