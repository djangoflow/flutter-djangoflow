//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_room_member_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatRoomMemberList {
  /// Returns a new [ChatRoomMemberList] instance.
  ChatRoomMemberList({

     this.members,
  });

  @JsonKey(
    
    name: r'members',
    required: false,
    includeIfNull: false
  )


  final List<User>? members;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatRoomMemberList &&
     other.members == members;

  @override
  int get hashCode =>
    members.hashCode;

  factory ChatRoomMemberList.fromJson(Map<String, dynamic> json) => _$ChatRoomMemberListFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomMemberListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

