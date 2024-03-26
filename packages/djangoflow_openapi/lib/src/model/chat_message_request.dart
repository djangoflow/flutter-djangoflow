//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'chat_message_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatMessageRequest {
  /// Returns a new [ChatMessageRequest] instance.
  ChatMessageRequest({

     this.chatRoom,

    required  this.message,
  });

  @JsonKey(
    
    name: r'chat_room',
    required: false,
    includeIfNull: false
  )


  final int? chatRoom;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessageRequest &&
     other.chatRoom == chatRoom &&
     other.message == message;

  @override
  int get hashCode =>
    chatRoom.hashCode +
    message.hashCode;

  factory ChatMessageRequest.fromJson(Map<String, dynamic> json) => _$ChatMessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

