// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AuthState _$AuthStateFromJson(
  Map<String, dynamic> json,
) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(
        json,
      );
    case 'authenticated':
      return _Authenticated.fromJson(
        json,
      );
    case 'unauthenticated':
      return _Unauthenticated.fromJson(
        json,
      );

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// @nodoc
@JsonSerializable()
class _Initial extends AuthState {
  const _Initial({final String? $type})
      : $type = $type ?? 'initial',
        super._();
  factory _Initial.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InitialFromJson(
        json,
      );

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$InitialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.initial()';
  }
}

/// @nodoc
class _$InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  _$InitialCopyWith(_Initial _, $Res Function(_Initial) __);
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;
}

/// @nodoc
@JsonSerializable()
class _Authenticated extends AuthState {
  const _Authenticated({required this.token, final String? $type})
      : $type = $type ?? 'authenticated',
        super._();
  factory _Authenticated.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AuthenticatedFromJson(
        json,
      );

  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'AuthState.authenticated(token: $token)';
  }
}

/// @nodoc
abstract mixin class _$AuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) _then) =
      __$AuthenticatedCopyWithImpl;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(this._self, this._then);

  final _Authenticated _self;
  final $Res Function(_Authenticated) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
  }) {
    return _then(_Authenticated(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Unauthenticated extends AuthState {
  const _Unauthenticated({final String? $type})
      : $type = $type ?? 'unauthenticated',
        super._();
  factory _Unauthenticated.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UnauthenticatedFromJson(
        json,
      );

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$UnauthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }
}

/// @nodoc
class _$UnauthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  _$UnauthenticatedCopyWith(
      _Unauthenticated _, $Res Function(_Unauthenticated) __);
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(this._self, this._then);

  final _Unauthenticated _self;
  final $Res Function(_Unauthenticated) _then;
}

// dart format on
