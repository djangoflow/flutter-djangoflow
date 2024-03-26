// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoomRequest _$ChatRoomRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatRoomRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['title', 'users'],
        );
        final val = ChatRoomRequest(
          title: $checkedConvert('title', (v) => v as String),
          chatType: $checkedConvert('chat_type',
              (v) => $enumDecodeNullable(_$ChatTypeEnumEnumMap, v)),
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'chatType': 'chat_type'},
    );

Map<String, dynamic> _$ChatRoomRequestToJson(ChatRoomRequest instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('chat_type', _$ChatTypeEnumEnumMap[instance.chatType]);
  val['users'] = instance.users;
  return val;
}

const _$ChatTypeEnumEnumMap = {
  ChatTypeEnum.group: 'group',
  ChatTypeEnum.private: 'private',
};
