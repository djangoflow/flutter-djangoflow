//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_chat_message_create_update_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedChatMessageCreateUpdateRequest {
  /// Returns a new [PatchedChatMessageCreateUpdateRequest] instance.
  PatchedChatMessageCreateUpdateRequest({

     this.message,
  });

  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedChatMessageCreateUpdateRequest &&
     other.message == message;

  @override
  int get hashCode =>
    message.hashCode;

  factory PatchedChatMessageCreateUpdateRequest.fromJson(Map<String, dynamic> json) => _$PatchedChatMessageCreateUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedChatMessageCreateUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

