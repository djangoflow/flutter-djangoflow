// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LocalNotificationState _$LocalNotificationStateFromJson(
    Map<String, dynamic> json) {
  return _DjangoflowLocalNotificationState.fromJson(json);
}

/// @nodoc
mixin _$LocalNotificationState {
// ignore: invalid_annotation_target
  @JsonKey(includeToJson: false, includeFromJson: false)
  NotificationResponse? get notificationResponse;

  /// Create a copy of LocalNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalNotificationStateCopyWith<LocalNotificationState> get copyWith =>
      _$LocalNotificationStateCopyWithImpl<LocalNotificationState>(
          this as LocalNotificationState, _$identity);

  /// Serializes this LocalNotificationState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalNotificationState &&
            (identical(other.notificationResponse, notificationResponse) ||
                other.notificationResponse == notificationResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationResponse);

  @override
  String toString() {
    return 'LocalNotificationState(notificationResponse: $notificationResponse)';
  }
}

/// @nodoc
abstract mixin class $LocalNotificationStateCopyWith<$Res> {
  factory $LocalNotificationStateCopyWith(LocalNotificationState value,
          $Res Function(LocalNotificationState) _then) =
      _$LocalNotificationStateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      NotificationResponse? notificationResponse});
}

/// @nodoc
class _$LocalNotificationStateCopyWithImpl<$Res>
    implements $LocalNotificationStateCopyWith<$Res> {
  _$LocalNotificationStateCopyWithImpl(this._self, this._then);

  final LocalNotificationState _self;
  final $Res Function(LocalNotificationState) _then;

  /// Create a copy of LocalNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationResponse = freezed,
  }) {
    return _then(_self.copyWith(
      notificationResponse: freezed == notificationResponse
          ? _self.notificationResponse
          : notificationResponse // ignore: cast_nullable_to_non_nullable
              as NotificationResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DjangoflowLocalNotificationState implements LocalNotificationState {
  const _DjangoflowLocalNotificationState(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      this.notificationResponse});
  factory _DjangoflowLocalNotificationState.fromJson(
          Map<String, dynamic> json) =>
      _$DjangoflowLocalNotificationStateFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final NotificationResponse? notificationResponse;

  /// Create a copy of LocalNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DjangoflowLocalNotificationStateCopyWith<_DjangoflowLocalNotificationState>
      get copyWith => __$DjangoflowLocalNotificationStateCopyWithImpl<
          _DjangoflowLocalNotificationState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DjangoflowLocalNotificationStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DjangoflowLocalNotificationState &&
            (identical(other.notificationResponse, notificationResponse) ||
                other.notificationResponse == notificationResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationResponse);

  @override
  String toString() {
    return 'LocalNotificationState(notificationResponse: $notificationResponse)';
  }
}

/// @nodoc
abstract mixin class _$DjangoflowLocalNotificationStateCopyWith<$Res>
    implements $LocalNotificationStateCopyWith<$Res> {
  factory _$DjangoflowLocalNotificationStateCopyWith(
          _DjangoflowLocalNotificationState value,
          $Res Function(_DjangoflowLocalNotificationState) _then) =
      __$DjangoflowLocalNotificationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      NotificationResponse? notificationResponse});
}

/// @nodoc
class __$DjangoflowLocalNotificationStateCopyWithImpl<$Res>
    implements _$DjangoflowLocalNotificationStateCopyWith<$Res> {
  __$DjangoflowLocalNotificationStateCopyWithImpl(this._self, this._then);

  final _DjangoflowLocalNotificationState _self;
  final $Res Function(_DjangoflowLocalNotificationState) _then;

  /// Create a copy of LocalNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notificationResponse = freezed,
  }) {
    return _then(_DjangoflowLocalNotificationState(
      notificationResponse: freezed == notificationResponse
          ? _self.notificationResponse
          : notificationResponse // ignore: cast_nullable_to_non_nullable
              as NotificationResponse?,
    ));
  }
}

// dart format on
