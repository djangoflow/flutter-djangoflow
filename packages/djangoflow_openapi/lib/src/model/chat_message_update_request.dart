//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'chat_message_update_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatMessageUpdateRequest {
  /// Returns a new [ChatMessageUpdateRequest] instance.
  ChatMessageUpdateRequest({

    required  this.message,
  });

  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessageUpdateRequest &&
     other.message == message;

  @override
  int get hashCode =>
    message.hashCode;

  factory ChatMessageUpdateRequest.fromJson(Map<String, dynamic> json) => _$ChatMessageUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

