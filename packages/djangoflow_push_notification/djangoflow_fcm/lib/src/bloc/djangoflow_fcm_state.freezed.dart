// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_fcm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DjangoflowFCMState {
  RemoteMessage? get remoteMessage;
  String? get token;
  AuthorizationStatus? get notificationAuthorizationStatus;
  bool? get remoteMessageOpenedApp;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DjangoflowFCMStateCopyWith<DjangoflowFCMState> get copyWith =>
      _$DjangoflowFCMStateCopyWithImpl<DjangoflowFCMState>(
          this as DjangoflowFCMState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DjangoflowFCMState &&
            (identical(other.remoteMessage, remoteMessage) ||
                other.remoteMessage == remoteMessage) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.notificationAuthorizationStatus,
                    notificationAuthorizationStatus) ||
                other.notificationAuthorizationStatus ==
                    notificationAuthorizationStatus) &&
            (identical(other.remoteMessageOpenedApp, remoteMessageOpenedApp) ||
                other.remoteMessageOpenedApp == remoteMessageOpenedApp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteMessage, token,
      notificationAuthorizationStatus, remoteMessageOpenedApp);

  @override
  String toString() {
    return 'DjangoflowFCMState(remoteMessage: $remoteMessage, token: $token, notificationAuthorizationStatus: $notificationAuthorizationStatus, remoteMessageOpenedApp: $remoteMessageOpenedApp)';
  }
}

/// @nodoc
abstract mixin class $DjangoflowFCMStateCopyWith<$Res> {
  factory $DjangoflowFCMStateCopyWith(
          DjangoflowFCMState value, $Res Function(DjangoflowFCMState) _then) =
      _$DjangoflowFCMStateCopyWithImpl;
  @useResult
  $Res call(
      {RemoteMessage? remoteMessage,
      String? token,
      AuthorizationStatus? notificationAuthorizationStatus,
      bool? remoteMessageOpenedApp});
}

/// @nodoc
class _$DjangoflowFCMStateCopyWithImpl<$Res>
    implements $DjangoflowFCMStateCopyWith<$Res> {
  _$DjangoflowFCMStateCopyWithImpl(this._self, this._then);

  final DjangoflowFCMState _self;
  final $Res Function(DjangoflowFCMState) _then;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteMessage = freezed,
    Object? token = freezed,
    Object? notificationAuthorizationStatus = freezed,
    Object? remoteMessageOpenedApp = freezed,
  }) {
    return _then(_self.copyWith(
      remoteMessage: freezed == remoteMessage
          ? _self.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAuthorizationStatus: freezed ==
              notificationAuthorizationStatus
          ? _self.notificationAuthorizationStatus
          : notificationAuthorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatus?,
      remoteMessageOpenedApp: freezed == remoteMessageOpenedApp
          ? _self.remoteMessageOpenedApp
          : remoteMessageOpenedApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _DjangoflowFCMState implements DjangoflowFCMState {
  const _DjangoflowFCMState(
      {this.remoteMessage,
      this.token,
      this.notificationAuthorizationStatus,
      this.remoteMessageOpenedApp});

  @override
  final RemoteMessage? remoteMessage;
  @override
  final String? token;
  @override
  final AuthorizationStatus? notificationAuthorizationStatus;
  @override
  final bool? remoteMessageOpenedApp;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DjangoflowFCMStateCopyWith<_DjangoflowFCMState> get copyWith =>
      __$DjangoflowFCMStateCopyWithImpl<_DjangoflowFCMState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DjangoflowFCMState &&
            (identical(other.remoteMessage, remoteMessage) ||
                other.remoteMessage == remoteMessage) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.notificationAuthorizationStatus,
                    notificationAuthorizationStatus) ||
                other.notificationAuthorizationStatus ==
                    notificationAuthorizationStatus) &&
            (identical(other.remoteMessageOpenedApp, remoteMessageOpenedApp) ||
                other.remoteMessageOpenedApp == remoteMessageOpenedApp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteMessage, token,
      notificationAuthorizationStatus, remoteMessageOpenedApp);

  @override
  String toString() {
    return 'DjangoflowFCMState(remoteMessage: $remoteMessage, token: $token, notificationAuthorizationStatus: $notificationAuthorizationStatus, remoteMessageOpenedApp: $remoteMessageOpenedApp)';
  }
}

/// @nodoc
abstract mixin class _$DjangoflowFCMStateCopyWith<$Res>
    implements $DjangoflowFCMStateCopyWith<$Res> {
  factory _$DjangoflowFCMStateCopyWith(
          _DjangoflowFCMState value, $Res Function(_DjangoflowFCMState) _then) =
      __$DjangoflowFCMStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RemoteMessage? remoteMessage,
      String? token,
      AuthorizationStatus? notificationAuthorizationStatus,
      bool? remoteMessageOpenedApp});
}

/// @nodoc
class __$DjangoflowFCMStateCopyWithImpl<$Res>
    implements _$DjangoflowFCMStateCopyWith<$Res> {
  __$DjangoflowFCMStateCopyWithImpl(this._self, this._then);

  final _DjangoflowFCMState _self;
  final $Res Function(_DjangoflowFCMState) _then;

  /// Create a copy of DjangoflowFCMState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? remoteMessage = freezed,
    Object? token = freezed,
    Object? notificationAuthorizationStatus = freezed,
    Object? remoteMessageOpenedApp = freezed,
  }) {
    return _then(_DjangoflowFCMState(
      remoteMessage: freezed == remoteMessage
          ? _self.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAuthorizationStatus: freezed ==
              notificationAuthorizationStatus
          ? _self.notificationAuthorizationStatus
          : notificationAuthorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatus?,
      remoteMessageOpenedApp: freezed == remoteMessageOpenedApp
          ? _self.remoteMessageOpenedApp
          : remoteMessageOpenedApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
