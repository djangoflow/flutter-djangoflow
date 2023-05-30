//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/push_action.dart';
import 'package:json_annotation/json_annotation.dart';

part 'push_action_category.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PushActionCategory {
  /// Returns a new [PushActionCategory] instance.
  PushActionCategory({

    required  this.name,

    required  this.actions,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'actions',
    required: true,
    includeIfNull: false
  )


  final List<PushAction> actions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PushActionCategory &&
     other.name == name &&
     other.actions == actions;

  @override
  int get hashCode =>
    name.hashCode +
    actions.hashCode;

  factory PushActionCategory.fromJson(Map<String, dynamic> json) => _$PushActionCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$PushActionCategoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

