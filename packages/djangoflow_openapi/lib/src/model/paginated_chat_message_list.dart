//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/chat_message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_chat_message_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedChatMessageList {
  /// Returns a new [PaginatedChatMessageList] instance.
  PaginatedChatMessageList({

     this.next,

     this.previous,

    required  this.results,
  });

  @JsonKey(
    
    name: r'next',
    required: false,
    includeIfNull: false
  )


  final String? next;



  @JsonKey(
    
    name: r'previous',
    required: false,
    includeIfNull: false
  )


  final String? previous;



  @JsonKey(
    
    name: r'results',
    required: true,
    includeIfNull: false
  )


  final List<ChatMessage> results;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedChatMessageList &&
     other.next == next &&
     other.previous == previous &&
     other.results == results;

  @override
  int get hashCode =>
    (next == null ? 0 : next.hashCode) +
    (previous == null ? 0 : previous.hashCode) +
    results.hashCode;

  factory PaginatedChatMessageList.fromJson(Map<String, dynamic> json) => _$PaginatedChatMessageListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedChatMessageListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

