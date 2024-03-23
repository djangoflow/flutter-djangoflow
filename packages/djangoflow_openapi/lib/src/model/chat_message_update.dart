//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'chat_message_update.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatMessageUpdate {
  /// Returns a new [ChatMessageUpdate] instance.
  ChatMessageUpdate({

     this.id,

     this.created,

     this.modified,

    required  this.message,

     this.chatRoom,

     this.createdBy,
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
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



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



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessageUpdate &&
     other.id == id &&
     other.created == created &&
     other.modified == modified &&
     other.message == message &&
     other.chatRoom == chatRoom &&
     other.createdBy == createdBy;

  @override
  int get hashCode =>
    id.hashCode +
    created.hashCode +
    modified.hashCode +
    message.hashCode +
    chatRoom.hashCode +
    createdBy.hashCode;

  factory ChatMessageUpdate.fromJson(Map<String, dynamic> json) => _$ChatMessageUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

