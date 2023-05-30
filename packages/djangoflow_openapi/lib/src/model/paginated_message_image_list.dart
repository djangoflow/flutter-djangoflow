//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/message_image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_message_image_list.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedMessageImageList {
  /// Returns a new [PaginatedMessageImageList] instance.
  PaginatedMessageImageList({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  @JsonKey(name: r'count', required: false, includeIfNull: false)
  final int? count;

  @JsonKey(name: r'next', required: false, includeIfNull: false)
  final String? next;

  @JsonKey(name: r'previous', required: false, includeIfNull: false)
  final String? previous;

  @JsonKey(name: r'results', required: false, includeIfNull: false)
  final List<MessageImage>? results;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginatedMessageImageList &&
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

  factory PaginatedMessageImageList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedMessageImageListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedMessageImageListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
