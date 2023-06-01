//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_message_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedMessageList {
  /// Returns a new [PaginatedMessageList] instance.
  PaginatedMessageList({

     this.count,

     this.next,

     this.previous,

     this.results,
  });

  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false
  )


  final int? count;



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
    required: false,
    includeIfNull: false
  )


  final List<Message>? results;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedMessageList &&
     other.count == count &&
     other.next == next &&
     other.previous == previous &&
     other.results == results;

  @override
  int get hashCode =>
    count.hashCode +
    (next == null ? 0 : next.hashCode) +
    (previous == null ? 0 : previous.hashCode) +
    results.hashCode;

  factory PaginatedMessageList.fromJson(Map<String, dynamic> json) => _$PaginatedMessageListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedMessageListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

