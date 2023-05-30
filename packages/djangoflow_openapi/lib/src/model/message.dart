//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/message_image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Message {
  /// Returns a new [Message] instance.
  Message({
    this.id,
    this.created,
    this.modified,
    this.roomUserId,
    this.isMe,
    this.isSeenByMe,
    this.roomId,
    this.images,
    this.reactions,
    this.body,
    this.parentId,
    this.isReaction = false,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'created', required: false, includeIfNull: false)
  final DateTime? created;

  @JsonKey(name: r'modified', required: false, includeIfNull: false)
  final DateTime? modified;

  @JsonKey(name: r'room_user_id', required: false, includeIfNull: false)
  final String? roomUserId;

  @JsonKey(name: r'is_me', required: false, includeIfNull: false)
  final bool? isMe;

  @JsonKey(name: r'is_seen_by_me', required: false, includeIfNull: false)
  final bool? isSeenByMe;

  @JsonKey(name: r'room_id', required: false, includeIfNull: false)
  final String? roomId;

  @JsonKey(name: r'images', required: false, includeIfNull: false)
  final List<MessageImage>? images;

  @JsonKey(name: r'reactions', required: false, includeIfNull: false)
  final List<Message>? reactions;

  @JsonKey(name: r'body', required: false, includeIfNull: false)
  final String? body;

  @JsonKey(name: r'parent_id', required: false, includeIfNull: false)
  final String? parentId;

  @JsonKey(
      defaultValue: false,
      name: r'is_reaction',
      required: false,
      includeIfNull: false)
  final bool? isReaction;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Message &&
          other.id == id &&
          other.created == created &&
          other.modified == modified &&
          other.roomUserId == roomUserId &&
          other.isMe == isMe &&
          other.isSeenByMe == isSeenByMe &&
          other.roomId == roomId &&
          other.images == images &&
          other.reactions == reactions &&
          other.body == body &&
          other.parentId == parentId &&
          other.isReaction == isReaction;

  @override
  int get hashCode =>
      id.hashCode +
      created.hashCode +
      modified.hashCode +
      roomUserId.hashCode +
      (isMe == null ? 0 : isMe.hashCode) +
      isSeenByMe.hashCode +
      roomId.hashCode +
      images.hashCode +
      reactions.hashCode +
      body.hashCode +
      parentId.hashCode +
      isReaction.hashCode;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
