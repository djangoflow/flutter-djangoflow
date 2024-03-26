// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoomMembers _$ChatRoomMembersFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatRoomMembers',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['users', 'action'],
        );
        final val = ChatRoomMembers(
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          action: $checkedConvert(
              'action', (v) => $enumDecode(_$ActionEnumEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChatRoomMembersToJson(ChatRoomMembers instance) =>
    <String, dynamic>{
      'users': instance.users,
      'action': _$ActionEnumEnumMap[instance.action]!,
    };

const _$ActionEnumEnumMap = {
  ActionEnum.add: 'add',
  ActionEnum.remove: 'remove',
};
