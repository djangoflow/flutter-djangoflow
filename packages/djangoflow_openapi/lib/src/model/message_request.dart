//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'message_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageRequest {
  /// Returns a new [MessageRequest] instance.
  MessageRequest({

     this.body,

     this.parentId,

     this.isReaction = false,
  });

  @JsonKey(
    
    name: r'body',
    required: false,
    includeIfNull: false
  )


  final String? body;



  @JsonKey(
    
    name: r'parent_id',
    required: false,
    includeIfNull: false
  )


  final String? parentId;



  @JsonKey(
    defaultValue: false,
    name: r'is_reaction',
    required: false,
    includeIfNull: false
  )


  final bool? isReaction;



  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageRequest &&
     other.body == body &&
     other.parentId == parentId &&
     other.isReaction == isReaction;

  @override
  int get hashCode =>
    body.hashCode +
    parentId.hashCode +
    isReaction.hashCode;

  factory MessageRequest.fromJson(Map<String, dynamic> json) => _$MessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MessageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

