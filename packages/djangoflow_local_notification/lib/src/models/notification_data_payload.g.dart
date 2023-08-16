// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDataPayload _$$_NotificationDataPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationDataPayload(
      notificationId: json['notificationId'] as String?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      actionCategoryId: json['actionCategoryId'] as String?,
      body: json['body'] as String?,
      actions: json['actions'] as String?,
      url: json['url'] as String?,
      dismissed: json['dismissed'] as String?,
      multiline: json['multiline'] as String?,
      image: json['image'] as String?,
      payload: json['payload'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_NotificationDataPayloadToJson(
        _$_NotificationDataPayload instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'id': instance.id,
      'title': instance.title,
      'actionCategoryId': instance.actionCategoryId,
      'body': instance.body,
      'actions': instance.actions,
      'url': instance.url,
      'dismissed': instance.dismissed,
      'multiline': instance.multiline,
      'image': instance.image,
      'payload': instance.payload,
    };

_$_NotificationPayloadAction _$$_NotificationPayloadActionFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationPayloadAction(
      method: json['method'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_NotificationPayloadActionToJson(
        _$_NotificationPayloadAction instance) =>
    <String, dynamic>{
      'method': instance.method,
      'url': instance.url,
    };
