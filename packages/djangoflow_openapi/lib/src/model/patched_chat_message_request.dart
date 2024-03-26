//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_chat_message_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedChatMessageRequest {
  /// Returns a new [PatchedChatMessageRequest] instance.
  PatchedChatMessageRequest({

     this.message,
  });

  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedChatMessageRequest &&
     other.message == message;

  @override
  int get hashCode =>
    message.hashCode;

  factory PatchedChatMessageRequest.fromJson(Map<String, dynamic> json) => _$PatchedChatMessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedChatMessageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

