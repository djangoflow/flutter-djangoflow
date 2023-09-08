//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:djangoflow_openapi/src/model/provider_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'social_token_obtain_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SocialTokenObtainRequest {
  /// Returns a new [SocialTokenObtainRequest] instance.
  SocialTokenObtainRequest({

    required  this.accessToken,

    required  this.provider,

     this.otp,
  });

  @JsonKey(
    
    name: r'access_token',
    required: true,
    includeIfNull: false
  )


  final String accessToken;



  @JsonKey(
    
    name: r'provider',
    required: true,
    includeIfNull: false
  )


  final ProviderEnum provider;



  @JsonKey(
    
    name: r'otp',
    required: false,
    includeIfNull: false
  )


  final String? otp;



  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialTokenObtainRequest &&
     other.accessToken == accessToken &&
     other.provider == provider &&
     other.otp == otp;

  @override
  int get hashCode =>
    accessToken.hashCode +
    provider.hashCode +
    otp.hashCode;

  factory SocialTokenObtainRequest.fromJson(Map<String, dynamic> json) => _$SocialTokenObtainRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SocialTokenObtainRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

