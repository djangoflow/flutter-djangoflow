//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'message_seen.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageSeen {
  /// Returns a new [MessageSeen] instance.
  MessageSeen({

    required  this.messageIds,
  });

  @JsonKey(
    
    name: r'message_ids',
    required: true,
    includeIfNull: false
  )


  final List<String> messageIds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageSeen &&
     other.messageIds == messageIds;

  @override
  int get hashCode =>
    messageIds.hashCode;

  factory MessageSeen.fromJson(Map<String, dynamic> json) => _$MessageSeenFromJson(json);

  Map<String, dynamic> toJson() => _$MessageSeenToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

