import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

extension PushActionCategoryExtension on PushActionCategory {
  DarwinNotificationCategory toDarwinNotificationCategory() =>
      DarwinNotificationCategory(
        name,
        actions: actions
            .map((e) =>
                DarwinNotificationAction.plain(e.name, e.buttonText, options: {
                  if (e.destructive == true)
                    DarwinNotificationActionOption.destructive,
                  if (e.foreground == true)
                    DarwinNotificationActionOption.foreground,
                  if (e.authenticationRequired == true)
                    DarwinNotificationActionOption.authenticationRequired,
                }))
            .toList(),
        options: <DarwinNotificationCategoryOption>{
          DarwinNotificationCategoryOption.hiddenPreviewShowTitle,
          DarwinNotificationCategoryOption.allowAnnouncement,
        },
      );
}

extension PushActionCategoryListExtension on List<PushActionCategory> {
  List<DarwinNotificationCategory> toDarwinNotificationCategoryList() =>
      map((e) => e.toDarwinNotificationCategory()).toList();

  List<AndroidNotificationAction> toAndroidNotificationActions(
      String actionCategory,
      {Color? destructiveColor}) {
    final pushCategory = firstWhereOrNull((e) => e.name == actionCategory);
    if (pushCategory == null) {
      return <AndroidNotificationAction>[];
    } else {
      return pushCategory.actions
          .map((e) => AndroidNotificationAction(
                e.name,
                e.buttonText,
                titleColor: e.destructive == true ? destructiveColor : null,
                showsUserInterface: e.foreground == true,
              ))
          .toList();
    }
  }
}
