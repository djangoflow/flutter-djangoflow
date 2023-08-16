import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data_payload.freezed.dart';
part 'notification_data_payload.g.dart';

@freezed
class NotificationDataPayload with _$NotificationDataPayload {
  const factory NotificationDataPayload({
    String? notificationId,
    String? id,
    String? title,
    String? actionCategoryId,
    String? body,
    String? actions,
    String? url,
    String? dismissed,
    String? multiline,
    String? image,
    Map<String, dynamic>? payload,
  }) = _NotificationDataPayload;

  factory NotificationDataPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataPayloadFromJson(json);
}

@freezed
class NotificationPayloadAction with _$NotificationPayloadAction {
  const factory NotificationPayloadAction({
    String? method,
    String? url,
  }) = _NotificationPayloadAction;

  factory NotificationPayloadAction.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadActionFromJson(json);
}
