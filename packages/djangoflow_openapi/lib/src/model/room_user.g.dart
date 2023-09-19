// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomUser _$RoomUserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'RoomUser',
      json,
      ($checkedConvert) {
        final val = RoomUser(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String?),
          isMe: $checkedConvert('is_me', (v) => v as bool?),
          isOnline: $checkedConvert('is_online', (v) => v as bool? ?? true),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
          roomId: $checkedConvert('room_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'isMe': 'is_me',
        'isOnline': 'is_online',
        'isActive': 'is_active',
        'roomId': 'room_id'
      },
    );

Map<String, dynamic> _$RoomUserToJson(RoomUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('image', instance.image);
  writeNotNull('is_me', instance.isMe);
  writeNotNull('is_online', instance.isOnline);
  writeNotNull('is_active', instance.isActive);
  writeNotNull('room_id', instance.roomId);
  return val;
}
