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

     this.image,

     this.height,

     this.width,

     this.size,

     this.name,
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
    required: false,
    includeIfNull: false
  )


  final String? image;



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
    
    name: r'size',
    required: false,
    includeIfNull: false
  )


  final int? size;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageImage &&
     other.id == id &&
     other.messageId == messageId &&
     other.roomId == roomId &&
     other.image == image &&
     other.height == height &&
     other.width == width &&
     other.size == size &&
     other.name == name;

  @override
  int get hashCode =>
    id.hashCode +
    messageId.hashCode +
    roomId.hashCode +
    (image == null ? 0 : image.hashCode) +
    height.hashCode +
    width.hashCode +
    size.hashCode +
    name.hashCode;

  factory MessageImage.fromJson(Map<String, dynamic> json) => _$MessageImageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageImageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

