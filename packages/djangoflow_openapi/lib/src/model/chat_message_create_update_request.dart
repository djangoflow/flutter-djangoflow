//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'chat_message_create_update_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatMessageCreateUpdateRequest {
  /// Returns a new [ChatMessageCreateUpdateRequest] instance.
  ChatMessageCreateUpdateRequest({

    required  this.message,
  });

  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessageCreateUpdateRequest &&
     other.message == message;

  @override
  int get hashCode =>
    message.hashCode;

  factory ChatMessageCreateUpdateRequest.fromJson(Map<String, dynamic> json) => _$ChatMessageCreateUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageCreateUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

