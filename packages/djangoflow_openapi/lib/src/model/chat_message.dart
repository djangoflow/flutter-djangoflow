//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/user.dart';
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

     this.created,

     this.modified,

     this.chatRoom,

     this.createdBy,

    required  this.message,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'created',
    required: false,
    includeIfNull: false
  )


  final DateTime? created;



  @JsonKey(
    
    name: r'modified',
    required: false,
    includeIfNull: false
  )


  final DateTime? modified;



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


  final User? createdBy;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessage &&
     other.id == id &&
     other.created == created &&
     other.modified == modified &&
     other.chatRoom == chatRoom &&
     other.createdBy == createdBy &&
     other.message == message;

  @override
  int get hashCode =>
    id.hashCode +
    created.hashCode +
    modified.hashCode +
    chatRoom.hashCode +
    createdBy.hashCode +
    message.hashCode;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

