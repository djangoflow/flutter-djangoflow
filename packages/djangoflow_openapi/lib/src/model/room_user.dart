//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'room_user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RoomUser {
  /// Returns a new [RoomUser] instance.
  RoomUser({

     this.id,

     this.name,

     this.image,

     this.isMe,

     this.isOnline = true,

     this.isActive,

     this.roomId,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'image',
    required: false,
    includeIfNull: false
  )


  final String? image;



  @JsonKey(
    
    name: r'is_me',
    required: false,
    includeIfNull: false
  )


  final bool? isMe;



  @JsonKey(
    defaultValue: true,
    name: r'is_online',
    required: false,
    includeIfNull: false
  )


  final bool? isOnline;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'room_id',
    required: false,
    includeIfNull: false
  )


  final String? roomId;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RoomUser &&
     other.id == id &&
     other.name == name &&
     other.image == image &&
     other.isMe == isMe &&
     other.isOnline == isOnline &&
     other.isActive == isActive &&
     other.roomId == roomId;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    image.hashCode +
    (isMe == null ? 0 : isMe.hashCode) +
    isOnline.hashCode +
    isActive.hashCode +
    roomId.hashCode;

  factory RoomUser.fromJson(Map<String, dynamic> json) => _$RoomUserFromJson(json);

  Map<String, dynamic> toJson() => _$RoomUserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

