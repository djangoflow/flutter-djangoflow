//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'room.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Room {
  /// Returns a new [Room] instance.
  Room({

     this.id,

     this.created,

     this.modified,

     this.creatorId,

     this.messageTotalCount,

     this.messageNewCount,

     this.lastMessage,

     this.isMuted,

    required  this.title,

     this.description,

     this.isPublic,

     this.image,

     this.users,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



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
    
    name: r'creator_id',
    required: false,
    includeIfNull: false
  )


  final String? creatorId;



  @JsonKey(
    
    name: r'message_total_count',
    required: false,
    includeIfNull: false
  )


  final int? messageTotalCount;



  @JsonKey(
    
    name: r'message_new_count',
    required: false,
    includeIfNull: false
  )


  final int? messageNewCount;



  @JsonKey(
    
    name: r'last_message',
    required: false,
    includeIfNull: false
  )


  final Message? lastMessage;



  @JsonKey(
    
    name: r'is_muted',
    required: false,
    includeIfNull: false
  )


  final bool? isMuted;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false
  )


  final String title;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'is_public',
    required: false,
    includeIfNull: false
  )


  final bool? isPublic;



  @JsonKey(
    
    name: r'image',
    required: false,
    includeIfNull: false
  )


  final String? image;



  @JsonKey(
    
    name: r'users',
    required: false,
    includeIfNull: false
  )


  final List<int>? users;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Room &&
     other.id == id &&
     other.created == created &&
     other.modified == modified &&
     other.creatorId == creatorId &&
     other.messageTotalCount == messageTotalCount &&
     other.messageNewCount == messageNewCount &&
     other.lastMessage == lastMessage &&
     other.isMuted == isMuted &&
     other.title == title &&
     other.description == description &&
     other.isPublic == isPublic &&
     other.image == image &&
     other.users == users;

  @override
  int get hashCode =>
    id.hashCode +
    created.hashCode +
    modified.hashCode +
    creatorId.hashCode +
    messageTotalCount.hashCode +
    messageNewCount.hashCode +
    (lastMessage == null ? 0 : lastMessage.hashCode) +
    isMuted.hashCode +
    title.hashCode +
    description.hashCode +
    isPublic.hashCode +
    (image == null ? 0 : image.hashCode) +
    users.hashCode;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  Map<String, dynamic> toJson() => _$RoomToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

