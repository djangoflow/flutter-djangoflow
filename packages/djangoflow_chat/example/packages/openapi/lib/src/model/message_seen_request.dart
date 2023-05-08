//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'message_seen_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageSeenRequest {
  /// Returns a new [MessageSeenRequest] instance.
  MessageSeenRequest({

    required  this.messageIds,
  });

  @JsonKey(
    
    name: r'message_ids',
    required: true,
    includeIfNull: false
  )


  final List<String> messageIds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageSeenRequest &&
     other.messageIds == messageIds;

  @override
  int get hashCode =>
    messageIds.hashCode;

  factory MessageSeenRequest.fromJson(Map<String, dynamic> json) => _$MessageSeenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MessageSeenRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

