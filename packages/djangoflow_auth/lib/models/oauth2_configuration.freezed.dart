// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth2_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OAuth2Configuration _$OAuth2ConfigurationFromJson(Map<String, dynamic> json) {
  return _OAuth2Configuration.fromJson(json);
}

/// @nodoc
mixin _$OAuth2Configuration {
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'redirect_uri')
  String get redirectUri => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'state', includeIfNull: false)
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_challenge', includeIfNull: false)
  String? get codeChallenge => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_challenge_method', includeIfNull: false)
  String? get codeChallengeMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_type', includeIfNull: false)
  String? get responseType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OAuth2ConfigurationCopyWith<OAuth2Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuth2ConfigurationCopyWith<$Res> {
  factory $OAuth2ConfigurationCopyWith(
          OAuth2Configuration value, $Res Function(OAuth2Configuration) then) =
      _$OAuth2ConfigurationCopyWithImpl<$Res, OAuth2Configuration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id')
          String clientId,
      @JsonKey(name: 'redirect_uri')
          String redirectUri,
      String scope,
      @JsonKey(name: 'state', includeIfNull: false)
          String? state,
      @JsonKey(name: 'code_challenge', includeIfNull: false)
          String? codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
          String? codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false)
          String? responseType});
}

/// @nodoc
class _$OAuth2ConfigurationCopyWithImpl<$Res, $Val extends OAuth2Configuration>
    implements $OAuth2ConfigurationCopyWith<$Res> {
  _$OAuth2ConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallenge: freezed == codeChallenge
          ? _value.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallengeMethod: freezed == codeChallengeMethod
          ? _value.codeChallengeMethod
          : codeChallengeMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      responseType: freezed == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OAuth2ConfigurationCopyWith<$Res>
    implements $OAuth2ConfigurationCopyWith<$Res> {
  factory _$$_OAuth2ConfigurationCopyWith(_$_OAuth2Configuration value,
          $Res Function(_$_OAuth2Configuration) then) =
      __$$_OAuth2ConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id')
          String clientId,
      @JsonKey(name: 'redirect_uri')
          String redirectUri,
      String scope,
      @JsonKey(name: 'state', includeIfNull: false)
          String? state,
      @JsonKey(name: 'code_challenge', includeIfNull: false)
          String? codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
          String? codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false)
          String? responseType});
}

/// @nodoc
class __$$_OAuth2ConfigurationCopyWithImpl<$Res>
    extends _$OAuth2ConfigurationCopyWithImpl<$Res, _$_OAuth2Configuration>
    implements _$$_OAuth2ConfigurationCopyWith<$Res> {
  __$$_OAuth2ConfigurationCopyWithImpl(_$_OAuth2Configuration _value,
      $Res Function(_$_OAuth2Configuration) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$_OAuth2Configuration(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallenge: freezed == codeChallenge
          ? _value.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallengeMethod: freezed == codeChallengeMethod
          ? _value.codeChallengeMethod
          : codeChallengeMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      responseType: freezed == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OAuth2Configuration extends _OAuth2Configuration {
  const _$_OAuth2Configuration(
      {@JsonKey(name: 'client_id')
          required this.clientId,
      @JsonKey(name: 'redirect_uri')
          required this.redirectUri,
      required this.scope,
      @JsonKey(name: 'state', includeIfNull: false)
          this.state,
      @JsonKey(name: 'code_challenge', includeIfNull: false)
          this.codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
          this.codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false)
          this.responseType})
      : super._();

  factory _$_OAuth2Configuration.fromJson(Map<String, dynamic> json) =>
      _$$_OAuth2ConfigurationFromJson(json);

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

  @override
  String toString() {
    return 'OAuth2Configuration(clientId: $clientId, redirectUri: $redirectUri, scope: $scope, state: $state, codeChallenge: $codeChallenge, codeChallengeMethod: $codeChallengeMethod, responseType: $responseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuth2Configuration &&
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
                other.responseType == responseType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, redirectUri, scope,
      state, codeChallenge, codeChallengeMethod, responseType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OAuth2ConfigurationCopyWith<_$_OAuth2Configuration> get copyWith =>
      __$$_OAuth2ConfigurationCopyWithImpl<_$_OAuth2Configuration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OAuth2ConfigurationToJson(
      this,
    );
  }
}

abstract class _OAuth2Configuration extends OAuth2Configuration {
  const factory _OAuth2Configuration(
      {@JsonKey(name: 'client_id')
          required final String clientId,
      @JsonKey(name: 'redirect_uri')
          required final String redirectUri,
      required final String scope,
      @JsonKey(name: 'state', includeIfNull: false)
          final String? state,
      @JsonKey(name: 'code_challenge', includeIfNull: false)
          final String? codeChallenge,
      @JsonKey(name: 'code_challenge_method', includeIfNull: false)
          final String? codeChallengeMethod,
      @JsonKey(name: 'response_type', includeIfNull: false)
          final String? responseType}) = _$_OAuth2Configuration;
  const _OAuth2Configuration._() : super._();

  factory _OAuth2Configuration.fromJson(Map<String, dynamic> json) =
      _$_OAuth2Configuration.fromJson;

  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'redirect_uri')
  String get redirectUri;
  @override
  String get scope;
  @override
  @JsonKey(name: 'state', includeIfNull: false)
  String? get state;
  @override
  @JsonKey(name: 'code_challenge', includeIfNull: false)
  String? get codeChallenge;
  @override
  @JsonKey(name: 'code_challenge_method', includeIfNull: false)
  String? get codeChallengeMethod;
  @override
  @JsonKey(name: 'response_type', includeIfNull: false)
  String? get responseType;
  @override
  @JsonKey(ignore: true)
  _$$_OAuth2ConfigurationCopyWith<_$_OAuth2Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}
