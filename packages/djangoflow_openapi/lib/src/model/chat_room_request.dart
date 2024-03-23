//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/chat_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_room_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatRoomRequest {
  /// Returns a new [ChatRoomRequest] instance.
  ChatRoomRequest({

    required  this.title,

     this.chatType,

    required  this.users,
  });

  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false
  )


  final String title;



  @JsonKey(
    
    name: r'chat_type',
    required: false,
    includeIfNull: false
  )


  final ChatTypeEnum? chatType;



  @JsonKey(
    
    name: r'users',
    required: true,
    includeIfNull: false
  )


  final List<int> users;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatRoomRequest &&
     other.title == title &&
     other.chatType == chatType &&
     other.users == users;

  @override
  int get hashCode =>
    title.hashCode +
    chatType.hashCode +
    users.hashCode;

  factory ChatRoomRequest.fromJson(Map<String, dynamic> json) => _$ChatRoomRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

