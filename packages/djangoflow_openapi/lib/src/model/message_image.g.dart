// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageImage _$MessageImageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MessageImage',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['image'],
        );
        final val = MessageImage(
          id: $checkedConvert('id', (v) => v as String?),
          messageId: $checkedConvert('message_id', (v) => v as String?),
          roomId: $checkedConvert('room_id', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String),
          height: $checkedConvert('height', (v) => v as int?),
          width: $checkedConvert('width', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          size: $checkedConvert('size', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'messageId': 'message_id', 'roomId': 'room_id'},
    );

Map<String, dynamic> _$MessageImageToJson(MessageImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('message_id', instance.messageId);
  writeNotNull('room_id', instance.roomId);
  val['image'] = instance.image;
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('name', instance.name);
  writeNotNull('size', instance.size);
  return val;
}
