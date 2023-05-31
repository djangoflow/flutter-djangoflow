//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'message_image.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageImage {
  /// Returns a new [MessageImage] instance.
  MessageImage({

     this.id,

     this.messageId,

     this.roomId,

    required  this.image,

     this.height,

     this.width,

     this.name,

     this.size,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



  @JsonKey(
    
    name: r'message_id',
    required: false,
    includeIfNull: false
  )


  final String? messageId;



  @JsonKey(
    
    name: r'room_id',
    required: false,
    includeIfNull: false
  )


  final String? roomId;



  @JsonKey(
    
    name: r'image',
    required: true,
    includeIfNull: false
  )


  final String image;



  @JsonKey(
    
    name: r'height',
    required: false,
    includeIfNull: false
  )


  final int? height;



  @JsonKey(
    
    name: r'width',
    required: false,
    includeIfNull: false
  )


  final int? width;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false
  )


  final int? size;



  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageImage &&
     other.id == id &&
     other.messageId == messageId &&
     other.roomId == roomId &&
     other.image == image &&
     other.height == height &&
     other.width == width &&
     other.name == name &&
     other.size == size;

  @override
  int get hashCode =>
    id.hashCode +
    messageId.hashCode +
    roomId.hashCode +
    image.hashCode +
    height.hashCode +
    width.hashCode +
    name.hashCode +
    (size == null ? 0 : size.hashCode);

  factory MessageImage.fromJson(Map<String, dynamic> json) => _$MessageImageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageImageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

