//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'social_o_auth1_token_obtain_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SocialOAuth1TokenObtainRequest {
  /// Returns a new [SocialOAuth1TokenObtainRequest] instance.
  SocialOAuth1TokenObtainRequest({

     this.firstName,

     this.lastName,

    required  this.provider,

    required  this.oauthToken,

    required  this.oauthTokenSecret,
  });

  @JsonKey(
    
    name: r'first_name',
    required: false,
    includeIfNull: false
  )


  final String? firstName;



  @JsonKey(
    
    name: r'last_name',
    required: false,
    includeIfNull: false
  )


  final String? lastName;



  @JsonKey(
    
    name: r'provider',
    required: true,
    includeIfNull: false
  )


  final bool provider;



  @JsonKey(
    
    name: r'oauth_token',
    required: true,
    includeIfNull: false
  )


  final String oauthToken;



  @JsonKey(
    
    name: r'oauth_token_secret',
    required: true,
    includeIfNull: false
  )


  final String oauthTokenSecret;



  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialOAuth1TokenObtainRequest &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.provider == provider &&
     other.oauthToken == oauthToken &&
     other.oauthTokenSecret == oauthTokenSecret;

  @override
  int get hashCode =>
    firstName.hashCode +
    lastName.hashCode +
    provider.hashCode +
    oauthToken.hashCode +
    oauthTokenSecret.hashCode;

  factory SocialOAuth1TokenObtainRequest.fromJson(Map<String, dynamic> json) => _$SocialOAuth1TokenObtainRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SocialOAuth1TokenObtainRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

