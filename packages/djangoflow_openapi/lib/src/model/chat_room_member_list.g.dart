// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_member_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoomMemberList _$ChatRoomMemberListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChatRoomMemberList',
      json,
      ($checkedConvert) {
        final val = ChatRoomMemberList(
          members: $checkedConvert(
              'members',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => User.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChatRoomMemberListToJson(ChatRoomMemberList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('members', instance.members?.map((e) => e.toJson()).toList());
  return val;
}
