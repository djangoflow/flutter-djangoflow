//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'message_is_me.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageIsMe {
  /// Returns a new [MessageIsMe] instance.
  MessageIsMe({
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageIsMe &&

  @override
  int get hashCode =>

  factory MessageIsMe.fromJson(Map<String, dynamic> json) => _$MessageIsMeFromJson(json);

  Map<String, dynamic> toJson() => _$MessageIsMeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

