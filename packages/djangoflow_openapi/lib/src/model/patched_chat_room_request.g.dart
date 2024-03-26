// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_chat_room_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedChatRoomRequest _$PatchedChatRoomRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedChatRoomRequest',
      json,
      ($checkedConvert) {
        final val = PatchedChatRoomRequest(
          title: $checkedConvert('title', (v) => v as String?),
          chatType: $checkedConvert('chat_type',
              (v) => $enumDecodeNullable(_$ChatTypeEnumEnumMap, v)),
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'chatType': 'chat_type'},
    );

Map<String, dynamic> _$PatchedChatRoomRequestToJson(
    PatchedChatRoomRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('chat_type', _$ChatTypeEnumEnumMap[instance.chatType]);
  writeNotNull('users', instance.users);
  return val;
}

const _$ChatTypeEnumEnumMap = {
  ChatTypeEnum.group: 'group',
  ChatTypeEnum.private: 'private',
};
