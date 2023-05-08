//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'room_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RoomRequest {
  /// Returns a new [RoomRequest] instance.
  RoomRequest({

    required  this.title,

     this.description,

     this.isPublic,

     this.image,

     this.users,
  });

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



  @JsonKey(ignore: true)


  final MultipartFile? image;



  @JsonKey(
    
    name: r'users',
    required: false,
    includeIfNull: false
  )


  final List<String>? users;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RoomRequest &&
     other.title == title &&
     other.description == description &&
     other.isPublic == isPublic &&
     other.image == image &&
     other.users == users;

  @override
  int get hashCode =>
    title.hashCode +
    description.hashCode +
    isPublic.hashCode +
    (image == null ? 0 : image.hashCode) +
    users.hashCode;

  factory RoomRequest.fromJson(Map<String, dynamic> json) => _$RoomRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RoomRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

