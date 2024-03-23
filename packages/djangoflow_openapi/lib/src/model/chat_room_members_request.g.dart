// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_members_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoomMembersRequest _$ChatRoomMembersRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatRoomMembersRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['users', 'action'],
        );
        final val = ChatRoomMembersRequest(
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
          action: $checkedConvert(
              'action', (v) => $enumDecode(_$ActionEnumEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChatRoomMembersRequestToJson(
        ChatRoomMembersRequest instance) =>
    <String, dynamic>{
      'users': instance.users,
      'action': _$ActionEnumEnumMap[instance.action]!,
    };

const _$ActionEnumEnumMap = {
  ActionEnum.add: 'add',
  ActionEnum.remove: 'remove',
};
