// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_fcm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DjangoflowFCMState {
  RemoteMessage? get remoteMessage => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  AuthorizationStatus? get notificationAuthorizationStatus =>
      throw _privateConstructorUsedError;
  bool? get remoteMessageOpenedApp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DjangoflowFCMStateCopyWith<DjangoflowFCMState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DjangoflowFCMStateCopyWith<$Res> {
  factory $DjangoflowFCMStateCopyWith(
          DjangoflowFCMState value, $Res Function(DjangoflowFCMState) then) =
      _$DjangoflowFCMStateCopyWithImpl<$Res, DjangoflowFCMState>;
  @useResult
  $Res call(
      {RemoteMessage? remoteMessage,
      String? token,
      AuthorizationStatus? notificationAuthorizationStatus,
      bool? remoteMessageOpenedApp});
}

/// @nodoc
class _$DjangoflowFCMStateCopyWithImpl<$Res, $Val extends DjangoflowFCMState>
    implements $DjangoflowFCMStateCopyWith<$Res> {
  _$DjangoflowFCMStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteMessage = freezed,
    Object? token = freezed,
    Object? notificationAuthorizationStatus = freezed,
    Object? remoteMessageOpenedApp = freezed,
  }) {
    return _then(_value.copyWith(
      remoteMessage: freezed == remoteMessage
          ? _value.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAuthorizationStatus: freezed ==
              notificationAuthorizationStatus
          ? _value.notificationAuthorizationStatus
          : notificationAuthorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatus?,
      remoteMessageOpenedApp: freezed == remoteMessageOpenedApp
          ? _value.remoteMessageOpenedApp
          : remoteMessageOpenedApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DjangoflowFCMStateCopyWith<$Res>
    implements $DjangoflowFCMStateCopyWith<$Res> {
  factory _$$_DjangoflowFCMStateCopyWith(_$_DjangoflowFCMState value,
          $Res Function(_$_DjangoflowFCMState) then) =
      __$$_DjangoflowFCMStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RemoteMessage? remoteMessage,
      String? token,
      AuthorizationStatus? notificationAuthorizationStatus,
      bool? remoteMessageOpenedApp});
}

/// @nodoc
class __$$_DjangoflowFCMStateCopyWithImpl<$Res>
    extends _$DjangoflowFCMStateCopyWithImpl<$Res, _$_DjangoflowFCMState>
    implements _$$_DjangoflowFCMStateCopyWith<$Res> {
  __$$_DjangoflowFCMStateCopyWithImpl(
      _$_DjangoflowFCMState _value, $Res Function(_$_DjangoflowFCMState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteMessage = freezed,
    Object? token = freezed,
    Object? notificationAuthorizationStatus = freezed,
    Object? remoteMessageOpenedApp = freezed,
  }) {
    return _then(_$_DjangoflowFCMState(
      remoteMessage: freezed == remoteMessage
          ? _value.remoteMessage
          : remoteMessage // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAuthorizationStatus: freezed ==
              notificationAuthorizationStatus
          ? _value.notificationAuthorizationStatus
          : notificationAuthorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatus?,
      remoteMessageOpenedApp: freezed == remoteMessageOpenedApp
          ? _value.remoteMessageOpenedApp
          : remoteMessageOpenedApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_DjangoflowFCMState implements _DjangoflowFCMState {
  const _$_DjangoflowFCMState(
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

  @override
  String toString() {
    return 'DjangoflowFCMState(remoteMessage: $remoteMessage, token: $token, notificationAuthorizationStatus: $notificationAuthorizationStatus, remoteMessageOpenedApp: $remoteMessageOpenedApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DjangoflowFCMState &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DjangoflowFCMStateCopyWith<_$_DjangoflowFCMState> get copyWith =>
      __$$_DjangoflowFCMStateCopyWithImpl<_$_DjangoflowFCMState>(
          this, _$identity);
}

abstract class _DjangoflowFCMState implements DjangoflowFCMState {
  const factory _DjangoflowFCMState(
      {final RemoteMessage? remoteMessage,
      final String? token,
      final AuthorizationStatus? notificationAuthorizationStatus,
      final bool? remoteMessageOpenedApp}) = _$_DjangoflowFCMState;

  @override
  RemoteMessage? get remoteMessage;
  @override
  String? get token;
  @override
  AuthorizationStatus? get notificationAuthorizationStatus;
  @override
  bool? get remoteMessageOpenedApp;
  @override
  @JsonKey(ignore: true)
  _$$_DjangoflowFCMStateCopyWith<_$_DjangoflowFCMState> get copyWith =>
      throw _privateConstructorUsedError;
}
