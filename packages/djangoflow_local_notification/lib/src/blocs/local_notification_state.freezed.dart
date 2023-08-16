// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalNotificationState _$LocalNotificationStateFromJson(
    Map<String, dynamic> json) {
  return _DjangoflowLocalNotificationState.fromJson(json);
}

/// @nodoc
mixin _$LocalNotificationState {
// ignore: invalid_annotation_target
  @JsonKey(includeToJson: false, includeFromJson: false)
  NotificationResponse? get notificationResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalNotificationStateCopyWith<LocalNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalNotificationStateCopyWith<$Res> {
  factory $LocalNotificationStateCopyWith(LocalNotificationState value,
          $Res Function(LocalNotificationState) then) =
      _$LocalNotificationStateCopyWithImpl<$Res, LocalNotificationState>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      NotificationResponse? notificationResponse});
}

/// @nodoc
class _$LocalNotificationStateCopyWithImpl<$Res,
        $Val extends LocalNotificationState>
    implements $LocalNotificationStateCopyWith<$Res> {
  _$LocalNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationResponse = freezed,
  }) {
    return _then(_value.copyWith(
      notificationResponse: freezed == notificationResponse
          ? _value.notificationResponse
          : notificationResponse // ignore: cast_nullable_to_non_nullable
              as NotificationResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DjangoflowLocalNotificationStateCopyWith<$Res>
    implements $LocalNotificationStateCopyWith<$Res> {
  factory _$$_DjangoflowLocalNotificationStateCopyWith(
          _$_DjangoflowLocalNotificationState value,
          $Res Function(_$_DjangoflowLocalNotificationState) then) =
      __$$_DjangoflowLocalNotificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      NotificationResponse? notificationResponse});
}

/// @nodoc
class __$$_DjangoflowLocalNotificationStateCopyWithImpl<$Res>
    extends _$LocalNotificationStateCopyWithImpl<$Res,
        _$_DjangoflowLocalNotificationState>
    implements _$$_DjangoflowLocalNotificationStateCopyWith<$Res> {
  __$$_DjangoflowLocalNotificationStateCopyWithImpl(
      _$_DjangoflowLocalNotificationState _value,
      $Res Function(_$_DjangoflowLocalNotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationResponse = freezed,
  }) {
    return _then(_$_DjangoflowLocalNotificationState(
      notificationResponse: freezed == notificationResponse
          ? _value.notificationResponse
          : notificationResponse // ignore: cast_nullable_to_non_nullable
              as NotificationResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DjangoflowLocalNotificationState
    implements _DjangoflowLocalNotificationState {
  const _$_DjangoflowLocalNotificationState(
      {@JsonKey(includeToJson: false, includeFromJson: false)
      this.notificationResponse});

  factory _$_DjangoflowLocalNotificationState.fromJson(
          Map<String, dynamic> json) =>
      _$$_DjangoflowLocalNotificationStateFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final NotificationResponse? notificationResponse;

  @override
  String toString() {
    return 'LocalNotificationState(notificationResponse: $notificationResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DjangoflowLocalNotificationState &&
            (identical(other.notificationResponse, notificationResponse) ||
                other.notificationResponse == notificationResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DjangoflowLocalNotificationStateCopyWith<
          _$_DjangoflowLocalNotificationState>
      get copyWith => __$$_DjangoflowLocalNotificationStateCopyWithImpl<
          _$_DjangoflowLocalNotificationState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DjangoflowLocalNotificationStateToJson(
      this,
    );
  }
}

abstract class _DjangoflowLocalNotificationState
    implements LocalNotificationState {
  const factory _DjangoflowLocalNotificationState(
          {@JsonKey(includeToJson: false, includeFromJson: false)
          final NotificationResponse? notificationResponse}) =
      _$_DjangoflowLocalNotificationState;

  factory _DjangoflowLocalNotificationState.fromJson(
      Map<String, dynamic> json) = _$_DjangoflowLocalNotificationState.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(includeToJson: false, includeFromJson: false)
  NotificationResponse? get notificationResponse;
  @override
  @JsonKey(ignore: true)
  _$$_DjangoflowLocalNotificationStateCopyWith<
          _$_DjangoflowLocalNotificationState>
      get copyWith => throw _privateConstructorUsedError;
}
