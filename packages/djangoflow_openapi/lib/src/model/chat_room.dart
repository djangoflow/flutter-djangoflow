//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/chat_type_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_room.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatRoom {
  /// Returns a new [ChatRoom] instance.
  ChatRoom({

     this.id,

    required  this.title,

     this.created,

     this.chatType,

     this.newestMessage,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false
  )


  final String title;



  @JsonKey(
    
    name: r'created',
    required: false,
    includeIfNull: false
  )


  final DateTime? created;



  @JsonKey(
    
    name: r'chat_type',
    required: false,
    includeIfNull: false
  )


  final ChatTypeEnum? chatType;



  @JsonKey(
    
    name: r'newest_message',
    required: false,
    includeIfNull: false
  )


  final String? newestMessage;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatRoom &&
     other.id == id &&
     other.title == title &&
     other.created == created &&
     other.chatType == chatType &&
     other.newestMessage == newestMessage;

  @override
  int get hashCode =>
    id.hashCode +
    title.hashCode +
    created.hashCode +
    chatType.hashCode +
    newestMessage.hashCode;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

