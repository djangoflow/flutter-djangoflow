// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OAuth2Configuration {
  @JsonKey(name: 'client_id')
  String get clientId;
  @JsonKey(name: 'redirect_uri')
  String get redirectUri;
  String get scope;
  @JsonKey(name: 'state', includeIfNull: false)
  String? get state;
  @JsonKey(name: 'code_challenge', includeIfNull: false)
  String? get codeChallenge;
  @JsonKey(name: 'code_challenge_method', includeIfNull: false)
  String? get codeChallengeMethod;
  @JsonKey(name: 'response_type', includeIfNull: false)
  String? get responseType;

  /// Needed for mobile platforms
  String? get customUriScheme;

  /// Create a copy of OAuth2Configuration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OAuth2ConfigurationCopyWith<OAuth2Configuration> get copyWith =>
      _$OAuth2ConfigurationCopyWithImpl<OAuth2Configuration>(
          this as OAuth2Configuration, _$identity);

  /// Serializes this OAuth2Configuration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OAuth2Configuration &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.codeChallenge, codeChallenge) ||
                other.codeChallenge == codeChallenge) &&
            (identical(other.codeChallengeMethod, codeChallengeMethod) ||
                other.codeChallengeMethod == codeChallengeMethod) &&
            (identical(other.responseType, responseType) ||
                other.responseType == responseType) &&
            (identical(other.customUriScheme, customUriScheme) ||
                other.customUriScheme == customUriScheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, redirectUri, scope,
      state, codeChallenge, codeChallengeMethod, responseType, customUriScheme);

  @override
  String toString() {
    return 'OAuth2Configuration(clientId: $clientId, redirectUri: $redirectUri, scope: $scope, state: $state, codeChallenge: $codeChallenge, codeChallengeMethod: $codeChallengeMethod, responseType: $responseType, customUriScheme: $customUriScheme)';
  }
}

/// @nodoc
abstract mixin class $OAuth2ConfigurationCopyWith<$Res> {
  factory $OAuth2ConfigurationCopyWith(
          OAuth2Configuration value, $Res Function(OAuth2Configuration) _then) =
      _$OAuth2ConfigurationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'redirect_uri') String redirectUri,
      String scope,
      @JsonKey(name: 'state', includeIfNull: false) String? state,
      @JsonKey(name: 'code_challenge', includeIfNull: false)
      String? codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
      String? codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false)
      String? responseType,
      String? customUriScheme});
}

/// @nodoc
class _$OAuth2ConfigurationCopyWithImpl<$Res>
    implements $OAuth2ConfigurationCopyWith<$Res> {
  _$OAuth2ConfigurationCopyWithImpl(this._self, this._then);

  final OAuth2Configuration _self;
  final $Res Function(OAuth2Configuration) _then;

  /// Create a copy of OAuth2Configuration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? redirectUri = null,
    Object? scope = null,
    Object? state = freezed,
    Object? codeChallenge = freezed,
    Object? codeChallengeMethod = freezed,
    Object? responseType = freezed,
    Object? customUriScheme = freezed,
  }) {
    return _then(_self.copyWith(
      clientId: null == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _self.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallenge: freezed == codeChallenge
          ? _self.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallengeMethod: freezed == codeChallengeMethod
          ? _self.codeChallengeMethod
          : codeChallengeMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      responseType: freezed == responseType
          ? _self.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as String?,
      customUriScheme: freezed == customUriScheme
          ? _self.customUriScheme
          : customUriScheme // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OAuth2Configuration extends OAuth2Configuration {
  const _OAuth2Configuration(
      {@JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'redirect_uri') required this.redirectUri,
      required this.scope,
      @JsonKey(name: 'state', includeIfNull: false) this.state,
      @JsonKey(name: 'code_challenge', includeIfNull: false) this.codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
      this.codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false) this.responseType,
      this.customUriScheme})
      : super._();
  factory _OAuth2Configuration.fromJson(Map<String, dynamic> json) =>
      _$OAuth2ConfigurationFromJson(json);

  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'redirect_uri')
  final String redirectUri;
  @override
  final String scope;
  @override
  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @override
  @JsonKey(name: 'code_challenge', includeIfNull: false)
  final String? codeChallenge;
  @override
  @JsonKey(name: 'code_challenge_method', includeIfNull: false)
  final String? codeChallengeMethod;
  @override
  @JsonKey(name: 'response_type', includeIfNull: false)
  final String? responseType;

  /// Needed for mobile platforms
  @override
  final String? customUriScheme;

  /// Create a copy of OAuth2Configuration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OAuth2ConfigurationCopyWith<_OAuth2Configuration> get copyWith =>
      __$OAuth2ConfigurationCopyWithImpl<_OAuth2Configuration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OAuth2ConfigurationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OAuth2Configuration &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.codeChallenge, codeChallenge) ||
                other.codeChallenge == codeChallenge) &&
            (identical(other.codeChallengeMethod, codeChallengeMethod) ||
                other.codeChallengeMethod == codeChallengeMethod) &&
            (identical(other.responseType, responseType) ||
                other.responseType == responseType) &&
            (identical(other.customUriScheme, customUriScheme) ||
                other.customUriScheme == customUriScheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, redirectUri, scope,
      state, codeChallenge, codeChallengeMethod, responseType, customUriScheme);

  @override
  String toString() {
    return 'OAuth2Configuration(clientId: $clientId, redirectUri: $redirectUri, scope: $scope, state: $state, codeChallenge: $codeChallenge, codeChallengeMethod: $codeChallengeMethod, responseType: $responseType, customUriScheme: $customUriScheme)';
  }
}

/// @nodoc
abstract mixin class _$OAuth2ConfigurationCopyWith<$Res>
    implements $OAuth2ConfigurationCopyWith<$Res> {
  factory _$OAuth2ConfigurationCopyWith(_OAuth2Configuration value,
          $Res Function(_OAuth2Configuration) _then) =
      __$OAuth2ConfigurationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'redirect_uri') String redirectUri,
      String scope,
      @JsonKey(name: 'state', includeIfNull: false) String? state,
      @JsonKey(name: 'code_challenge', includeIfNull: false)
      String? codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
      String? codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false)
      String? responseType,
      String? customUriScheme});
}

/// @nodoc
class __$OAuth2ConfigurationCopyWithImpl<$Res>
    implements _$OAuth2ConfigurationCopyWith<$Res> {
  __$OAuth2ConfigurationCopyWithImpl(this._self, this._then);

  final _OAuth2Configuration _self;
  final $Res Function(_OAuth2Configuration) _then;

  /// Create a copy of OAuth2Configuration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientId = null,
    Object? redirectUri = null,
    Object? scope = null,
    Object? state = freezed,
    Object? codeChallenge = freezed,
    Object? codeChallengeMethod = freezed,
    Object? responseType = freezed,
    Object? customUriScheme = freezed,
  }) {
    return _then(_OAuth2Configuration(
      clientId: null == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _self.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallenge: freezed == codeChallenge
          ? _self.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallengeMethod: freezed == codeChallengeMethod
          ? _self.codeChallengeMethod
          : codeChallengeMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      responseType: freezed == responseType
          ? _self.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as String?,
      customUriScheme: freezed == customUriScheme
          ? _self.customUriScheme
          : customUriScheme // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
