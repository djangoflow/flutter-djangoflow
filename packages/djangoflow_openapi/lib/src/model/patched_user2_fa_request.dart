//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_user2_fa_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUser2FARequest {
  /// Returns a new [PatchedUser2FARequest] instance.
  PatchedUser2FARequest({

     this.isRequired,
  });

  @JsonKey(
    
    name: r'is_required',
    required: false,
    includeIfNull: false
  )


  final bool? isRequired;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUser2FARequest &&
     other.isRequired == isRequired;

  @override
  int get hashCode =>
    isRequired.hashCode;

  factory PatchedUser2FARequest.fromJson(Map<String, dynamic> json) => _$PatchedUser2FARequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUser2FARequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

