import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification_state.freezed.dart';
part 'local_notification_state.g.dart';

@freezed
abstract class LocalNotificationState with _$LocalNotificationState {
  const factory LocalNotificationState({
    // ignore: invalid_annotation_target
    @JsonKey(
      includeToJson: false,
      includeFromJson: false,
    )
    NotificationResponse? notificationResponse,
  }) = _DjangoflowLocalNotificationState;

  factory LocalNotificationState.fromJson(Map<String, dynamic> json) =>
      _$LocalNotificationStateFromJson(json);
}
