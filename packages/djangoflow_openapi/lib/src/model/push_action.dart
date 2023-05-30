//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'push_action.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PushAction {
  /// Returns a new [PushAction] instance.
  PushAction({

    required  this.name,

    required  this.buttonText,

     this.authenticationRequired,

     this.destructive,

     this.foreground,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'button_text',
    required: true,
    includeIfNull: false
  )


  final String buttonText;



  @JsonKey(
    
    name: r'authentication_required',
    required: false,
    includeIfNull: false
  )


  final bool? authenticationRequired;



  @JsonKey(
    
    name: r'destructive',
    required: false,
    includeIfNull: false
  )


  final bool? destructive;



  @JsonKey(
    
    name: r'foreground',
    required: false,
    includeIfNull: false
  )


  final bool? foreground;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PushAction &&
     other.name == name &&
     other.buttonText == buttonText &&
     other.authenticationRequired == authenticationRequired &&
     other.destructive == destructive &&
     other.foreground == foreground;

  @override
  int get hashCode =>
    name.hashCode +
    buttonText.hashCode +
    authenticationRequired.hashCode +
    destructive.hashCode +
    foreground.hashCode;

  factory PushAction.fromJson(Map<String, dynamic> json) => _$PushActionFromJson(json);

  Map<String, dynamic> toJson() => _$PushActionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

