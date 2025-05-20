// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_data_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationDataPayload {
  String? get notificationId;
  String? get id;
  String? get title;
  String? get actionCategoryId;
  String? get body;
  String? get actions;
  String? get url;
  String? get dismissed;
  String? get multiline;
  String? get image;
  Map<String, dynamic>? get payload;

  /// Create a copy of NotificationDataPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationDataPayloadCopyWith<NotificationDataPayload> get copyWith =>
      _$NotificationDataPayloadCopyWithImpl<NotificationDataPayload>(
          this as NotificationDataPayload, _$identity);

  /// Serializes this NotificationDataPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationDataPayload &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.actionCategoryId, actionCategoryId) ||
                other.actionCategoryId == actionCategoryId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.dismissed, dismissed) ||
                other.dismissed == dismissed) &&
            (identical(other.multiline, multiline) ||
                other.multiline == multiline) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      notificationId,
      id,
      title,
      actionCategoryId,
      body,
      actions,
      url,
      dismissed,
      multiline,
      image,
      const DeepCollectionEquality().hash(payload));

  @override
  String toString() {
    return 'NotificationDataPayload(notificationId: $notificationId, id: $id, title: $title, actionCategoryId: $actionCategoryId, body: $body, actions: $actions, url: $url, dismissed: $dismissed, multiline: $multiline, image: $image, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class $NotificationDataPayloadCopyWith<$Res> {
  factory $NotificationDataPayloadCopyWith(NotificationDataPayload value,
          $Res Function(NotificationDataPayload) _then) =
      _$NotificationDataPayloadCopyWithImpl;
  @useResult
  $Res call(
      {String? notificationId,
      String? id,
      String? title,
      String? actionCategoryId,
      String? body,
      String? actions,
      String? url,
      String? dismissed,
      String? multiline,
      String? image,
      Map<String, dynamic>? payload});
}

/// @nodoc
class _$NotificationDataPayloadCopyWithImpl<$Res>
    implements $NotificationDataPayloadCopyWith<$Res> {
  _$NotificationDataPayloadCopyWithImpl(this._self, this._then);

  final NotificationDataPayload _self;
  final $Res Function(NotificationDataPayload) _then;

  /// Create a copy of NotificationDataPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? actionCategoryId = freezed,
    Object? body = freezed,
    Object? actions = freezed,
    Object? url = freezed,
    Object? dismissed = freezed,
    Object? multiline = freezed,
    Object? image = freezed,
    Object? payload = freezed,
  }) {
    return _then(_self.copyWith(
      notificationId: freezed == notificationId
          ? _self.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      actionCategoryId: freezed == actionCategoryId
          ? _self.actionCategoryId
          : actionCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      dismissed: freezed == dismissed
          ? _self.dismissed
          : dismissed // ignore: cast_nullable_to_non_nullable
              as String?,
      multiline: freezed == multiline
          ? _self.multiline
          : multiline // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationDataPayload implements NotificationDataPayload {
  const _NotificationDataPayload(
      {this.notificationId,
      this.id,
      this.title,
      this.actionCategoryId,
      this.body,
      this.actions,
      this.url,
      this.dismissed,
      this.multiline,
      this.image,
      final Map<String, dynamic>? payload})
      : _payload = payload;
  factory _NotificationDataPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataPayloadFromJson(json);

  @override
  final String? notificationId;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? actionCategoryId;
  @override
  final String? body;
  @override
  final String? actions;
  @override
  final String? url;
  @override
  final String? dismissed;
  @override
  final String? multiline;
  @override
  final String? image;
  final Map<String, dynamic>? _payload;
  @override
  Map<String, dynamic>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of NotificationDataPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationDataPayloadCopyWith<_NotificationDataPayload> get copyWith =>
      __$NotificationDataPayloadCopyWithImpl<_NotificationDataPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationDataPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationDataPayload &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.actionCategoryId, actionCategoryId) ||
                other.actionCategoryId == actionCategoryId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.dismissed, dismissed) ||
                other.dismissed == dismissed) &&
            (identical(other.multiline, multiline) ||
                other.multiline == multiline) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      notificationId,
      id,
      title,
      actionCategoryId,
      body,
      actions,
      url,
      dismissed,
      multiline,
      image,
      const DeepCollectionEquality().hash(_payload));

  @override
  String toString() {
    return 'NotificationDataPayload(notificationId: $notificationId, id: $id, title: $title, actionCategoryId: $actionCategoryId, body: $body, actions: $actions, url: $url, dismissed: $dismissed, multiline: $multiline, image: $image, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class _$NotificationDataPayloadCopyWith<$Res>
    implements $NotificationDataPayloadCopyWith<$Res> {
  factory _$NotificationDataPayloadCopyWith(_NotificationDataPayload value,
          $Res Function(_NotificationDataPayload) _then) =
      __$NotificationDataPayloadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? notificationId,
      String? id,
      String? title,
      String? actionCategoryId,
      String? body,
      String? actions,
      String? url,
      String? dismissed,
      String? multiline,
      String? image,
      Map<String, dynamic>? payload});
}

/// @nodoc
class __$NotificationDataPayloadCopyWithImpl<$Res>
    implements _$NotificationDataPayloadCopyWith<$Res> {
  __$NotificationDataPayloadCopyWithImpl(this._self, this._then);

  final _NotificationDataPayload _self;
  final $Res Function(_NotificationDataPayload) _then;

  /// Create a copy of NotificationDataPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notificationId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? actionCategoryId = freezed,
    Object? body = freezed,
    Object? actions = freezed,
    Object? url = freezed,
    Object? dismissed = freezed,
    Object? multiline = freezed,
    Object? image = freezed,
    Object? payload = freezed,
  }) {
    return _then(_NotificationDataPayload(
      notificationId: freezed == notificationId
          ? _self.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      actionCategoryId: freezed == actionCategoryId
          ? _self.actionCategoryId
          : actionCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      dismissed: freezed == dismissed
          ? _self.dismissed
          : dismissed // ignore: cast_nullable_to_non_nullable
              as String?,
      multiline: freezed == multiline
          ? _self.multiline
          : multiline // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _self._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$NotificationPayloadAction {
  String? get method;
  String? get url;

  /// Create a copy of NotificationPayloadAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationPayloadActionCopyWith<NotificationPayloadAction> get copyWith =>
      _$NotificationPayloadActionCopyWithImpl<NotificationPayloadAction>(
          this as NotificationPayloadAction, _$identity);

  /// Serializes this NotificationPayloadAction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationPayloadAction &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, method, url);

  @override
  String toString() {
    return 'NotificationPayloadAction(method: $method, url: $url)';
  }
}

/// @nodoc
abstract mixin class $NotificationPayloadActionCopyWith<$Res> {
  factory $NotificationPayloadActionCopyWith(NotificationPayloadAction value,
          $Res Function(NotificationPayloadAction) _then) =
      _$NotificationPayloadActionCopyWithImpl;
  @useResult
  $Res call({String? method, String? url});
}

/// @nodoc
class _$NotificationPayloadActionCopyWithImpl<$Res>
    implements $NotificationPayloadActionCopyWith<$Res> {
  _$NotificationPayloadActionCopyWithImpl(this._self, this._then);

  final NotificationPayloadAction _self;
  final $Res Function(NotificationPayloadAction) _then;

  /// Create a copy of NotificationPayloadAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
  }) {
    return _then(_self.copyWith(
      method: freezed == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationPayloadAction implements NotificationPayloadAction {
  const _NotificationPayloadAction({this.method, this.url});
  factory _NotificationPayloadAction.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadActionFromJson(json);

  @override
  final String? method;
  @override
  final String? url;

  /// Create a copy of NotificationPayloadAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationPayloadActionCopyWith<_NotificationPayloadAction>
      get copyWith =>
          __$NotificationPayloadActionCopyWithImpl<_NotificationPayloadAction>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationPayloadActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationPayloadAction &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, method, url);

  @override
  String toString() {
    return 'NotificationPayloadAction(method: $method, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$NotificationPayloadActionCopyWith<$Res>
    implements $NotificationPayloadActionCopyWith<$Res> {
  factory _$NotificationPayloadActionCopyWith(_NotificationPayloadAction value,
          $Res Function(_NotificationPayloadAction) _then) =
      __$NotificationPayloadActionCopyWithImpl;
  @override
  @useResult
  $Res call({String? method, String? url});
}

/// @nodoc
class __$NotificationPayloadActionCopyWithImpl<$Res>
    implements _$NotificationPayloadActionCopyWith<$Res> {
  __$NotificationPayloadActionCopyWithImpl(this._self, this._then);

  final _NotificationPayloadAction _self;
  final $Res Function(_NotificationPayloadAction) _then;

  /// Create a copy of NotificationPayloadAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
  }) {
    return _then(_NotificationPayloadAction(
      method: freezed == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
