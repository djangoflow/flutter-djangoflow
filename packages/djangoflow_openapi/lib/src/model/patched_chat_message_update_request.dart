//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_chat_message_update_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedChatMessageUpdateRequest {
  /// Returns a new [PatchedChatMessageUpdateRequest] instance.
  PatchedChatMessageUpdateRequest({

     this.message,
  });

  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedChatMessageUpdateRequest &&
     other.message == message;

  @override
  int get hashCode =>
    message.hashCode;

  factory PatchedChatMessageUpdateRequest.fromJson(Map<String, dynamic> json) => _$PatchedChatMessageUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedChatMessageUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

