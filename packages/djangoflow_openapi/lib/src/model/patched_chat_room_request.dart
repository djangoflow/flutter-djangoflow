//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/chat_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_chat_room_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedChatRoomRequest {
  /// Returns a new [PatchedChatRoomRequest] instance.
  PatchedChatRoomRequest({

     this.title,

     this.chatType,

     this.users,
  });

  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false
  )


  final String? title;



  @JsonKey(
    
    name: r'chat_type',
    required: false,
    includeIfNull: false
  )


  final ChatTypeEnum? chatType;



  @JsonKey(
    
    name: r'users',
    required: false,
    includeIfNull: false
  )


  final List<int>? users;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedChatRoomRequest &&
     other.title == title &&
     other.chatType == chatType &&
     other.users == users;

  @override
  int get hashCode =>
    title.hashCode +
    chatType.hashCode +
    users.hashCode;

  factory PatchedChatRoomRequest.fromJson(Map<String, dynamic> json) => _$PatchedChatRoomRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedChatRoomRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

