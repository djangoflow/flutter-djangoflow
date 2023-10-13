//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'remote_config.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoteConfig {
  /// Returns a new [RemoteConfig] instance.
  RemoteConfig({

    required  this.part_,
  });

  @JsonKey(
    
    name: r'part',
    required: true,
    includeIfNull: false
  )


  final Map<String, Object> part_;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RemoteConfig &&
     other.part_ == part_;

  @override
  int get hashCode =>
    part_.hashCode;

  factory RemoteConfig.fromJson(Map<String, dynamic> json) => _$RemoteConfigFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

