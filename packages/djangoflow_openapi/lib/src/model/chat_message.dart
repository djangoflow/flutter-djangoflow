//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'chat_message.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatMessage {
  /// Returns a new [ChatMessage] instance.
  ChatMessage({

     this.id,

     this.chatRoom,

     this.createdBy,

    required  this.message,

     this.created,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'chat_room',
    required: false,
    includeIfNull: false
  )


  final int? chatRoom;



  @JsonKey(
    
    name: r'created_by',
    required: false,
    includeIfNull: false
  )


  final int? createdBy;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @JsonKey(
    
    name: r'created',
    required: false,
    includeIfNull: false
  )


  final DateTime? created;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessage &&
     other.id == id &&
     other.chatRoom == chatRoom &&
     other.createdBy == createdBy &&
     other.message == message &&
     other.created == created;

  @override
  int get hashCode =>
    id.hashCode +
    chatRoom.hashCode +
    createdBy.hashCode +
    message.hashCode +
    created.hashCode;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

