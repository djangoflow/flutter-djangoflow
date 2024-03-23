//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/action_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_room_members.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatRoomMembers {
  /// Returns a new [ChatRoomMembers] instance.
  ChatRoomMembers({

    required  this.users,

    required  this.action,
  });

  @JsonKey(
    
    name: r'users',
    required: true,
    includeIfNull: false
  )


  final List<int> users;



  @JsonKey(
    
    name: r'action',
    required: true,
    includeIfNull: false
  )


  final ActionEnum action;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatRoomMembers &&
     other.users == users &&
     other.action == action;

  @override
  int get hashCode =>
    users.hashCode +
    action.hashCode;

  factory ChatRoomMembers.fromJson(Map<String, dynamic> json) => _$ChatRoomMembersFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomMembersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

