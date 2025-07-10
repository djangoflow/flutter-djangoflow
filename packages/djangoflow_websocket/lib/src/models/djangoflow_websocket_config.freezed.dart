// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_websocket_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DjangoflowWebsocketConfig {
  String get connectingMessage;
  String get reConnectingMessage;
  String get failedToSubscribeMessage;
  String get connectionErrorMessage;
  String get serverClosedConnectionMessage;
  Duration get wSReconnectDelay;
  Duration get wSCheckConnectionDelay;
  bool get enablePing;
  Duration get pingInterval;
  Map<String, dynamic> get pingMessage;

  /// Create a copy of DjangoflowWebsocketConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DjangoflowWebsocketConfigCopyWith<DjangoflowWebsocketConfig> get copyWith =>
      _$DjangoflowWebsocketConfigCopyWithImpl<DjangoflowWebsocketConfig>(
          this as DjangoflowWebsocketConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DjangoflowWebsocketConfig &&
            (identical(other.connectingMessage, connectingMessage) ||
                other.connectingMessage == connectingMessage) &&
            (identical(other.reConnectingMessage, reConnectingMessage) ||
                other.reConnectingMessage == reConnectingMessage) &&
            (identical(
                    other.failedToSubscribeMessage, failedToSubscribeMessage) ||
                other.failedToSubscribeMessage == failedToSubscribeMessage) &&
            (identical(other.connectionErrorMessage, connectionErrorMessage) ||
                other.connectionErrorMessage == connectionErrorMessage) &&
            (identical(other.serverClosedConnectionMessage,
                    serverClosedConnectionMessage) ||
                other.serverClosedConnectionMessage ==
                    serverClosedConnectionMessage) &&
            (identical(other.wSReconnectDelay, wSReconnectDelay) ||
                other.wSReconnectDelay == wSReconnectDelay) &&
            (identical(other.wSCheckConnectionDelay, wSCheckConnectionDelay) ||
                other.wSCheckConnectionDelay == wSCheckConnectionDelay) &&
            (identical(other.enablePing, enablePing) ||
                other.enablePing == enablePing) &&
            (identical(other.pingInterval, pingInterval) ||
                other.pingInterval == pingInterval) &&
            const DeepCollectionEquality()
                .equals(other.pingMessage, pingMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      connectingMessage,
      reConnectingMessage,
      failedToSubscribeMessage,
      connectionErrorMessage,
      serverClosedConnectionMessage,
      wSReconnectDelay,
      wSCheckConnectionDelay,
      enablePing,
      pingInterval,
      const DeepCollectionEquality().hash(pingMessage));

  @override
  String toString() {
    return 'DjangoflowWebsocketConfig(connectingMessage: $connectingMessage, reConnectingMessage: $reConnectingMessage, failedToSubscribeMessage: $failedToSubscribeMessage, connectionErrorMessage: $connectionErrorMessage, serverClosedConnectionMessage: $serverClosedConnectionMessage, wSReconnectDelay: $wSReconnectDelay, wSCheckConnectionDelay: $wSCheckConnectionDelay, enablePing: $enablePing, pingInterval: $pingInterval, pingMessage: $pingMessage)';
  }
}

/// @nodoc
abstract mixin class $DjangoflowWebsocketConfigCopyWith<$Res> {
  factory $DjangoflowWebsocketConfigCopyWith(DjangoflowWebsocketConfig value,
          $Res Function(DjangoflowWebsocketConfig) _then) =
      _$DjangoflowWebsocketConfigCopyWithImpl;
  @useResult
  $Res call(
      {String connectingMessage,
      String reConnectingMessage,
      String failedToSubscribeMessage,
      String connectionErrorMessage,
      String serverClosedConnectionMessage,
      Duration wSReconnectDelay,
      Duration wSCheckConnectionDelay,
      bool enablePing,
      Duration pingInterval,
      Map<String, dynamic> pingMessage});
}

/// @nodoc
class _$DjangoflowWebsocketConfigCopyWithImpl<$Res>
    implements $DjangoflowWebsocketConfigCopyWith<$Res> {
  _$DjangoflowWebsocketConfigCopyWithImpl(this._self, this._then);

  final DjangoflowWebsocketConfig _self;
  final $Res Function(DjangoflowWebsocketConfig) _then;

  /// Create a copy of DjangoflowWebsocketConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectingMessage = null,
    Object? reConnectingMessage = null,
    Object? failedToSubscribeMessage = null,
    Object? connectionErrorMessage = null,
    Object? serverClosedConnectionMessage = null,
    Object? wSReconnectDelay = null,
    Object? wSCheckConnectionDelay = null,
    Object? enablePing = null,
    Object? pingInterval = null,
    Object? pingMessage = null,
  }) {
    return _then(_self.copyWith(
      connectingMessage: null == connectingMessage
          ? _self.connectingMessage
          : connectingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      reConnectingMessage: null == reConnectingMessage
          ? _self.reConnectingMessage
          : reConnectingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      failedToSubscribeMessage: null == failedToSubscribeMessage
          ? _self.failedToSubscribeMessage
          : failedToSubscribeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      connectionErrorMessage: null == connectionErrorMessage
          ? _self.connectionErrorMessage
          : connectionErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      serverClosedConnectionMessage: null == serverClosedConnectionMessage
          ? _self.serverClosedConnectionMessage
          : serverClosedConnectionMessage // ignore: cast_nullable_to_non_nullable
              as String,
      wSReconnectDelay: null == wSReconnectDelay
          ? _self.wSReconnectDelay
          : wSReconnectDelay // ignore: cast_nullable_to_non_nullable
              as Duration,
      wSCheckConnectionDelay: null == wSCheckConnectionDelay
          ? _self.wSCheckConnectionDelay
          : wSCheckConnectionDelay // ignore: cast_nullable_to_non_nullable
              as Duration,
      enablePing: null == enablePing
          ? _self.enablePing
          : enablePing // ignore: cast_nullable_to_non_nullable
              as bool,
      pingInterval: null == pingInterval
          ? _self.pingInterval
          : pingInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      pingMessage: null == pingMessage
          ? _self.pingMessage
          : pingMessage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _DjangoflowWebsocketConfig implements DjangoflowWebsocketConfig {
  const _DjangoflowWebsocketConfig(
      {this.connectingMessage = 'Connecting....',
      this.reConnectingMessage = 'Re-connecting....',
      this.failedToSubscribeMessage = 'failed to subscribe',
      this.connectionErrorMessage = 'connection error',
      this.serverClosedConnectionMessage = 'server closed connection',
      this.wSReconnectDelay = const Duration(milliseconds: 5000),
      this.wSCheckConnectionDelay = const Duration(milliseconds: 100),
      this.enablePing = false,
      this.pingInterval = const Duration(seconds: 30),
      final Map<String, dynamic> pingMessage = const {'type': 'ping'}})
      : _pingMessage = pingMessage;

  @override
  @JsonKey()
  final String connectingMessage;
  @override
  @JsonKey()
  final String reConnectingMessage;
  @override
  @JsonKey()
  final String failedToSubscribeMessage;
  @override
  @JsonKey()
  final String connectionErrorMessage;
  @override
  @JsonKey()
  final String serverClosedConnectionMessage;
  @override
  @JsonKey()
  final Duration wSReconnectDelay;
  @override
  @JsonKey()
  final Duration wSCheckConnectionDelay;
  @override
  @JsonKey()
  final bool enablePing;
  @override
  @JsonKey()
  final Duration pingInterval;
  final Map<String, dynamic> _pingMessage;
  @override
  @JsonKey()
  Map<String, dynamic> get pingMessage {
    if (_pingMessage is EqualUnmodifiableMapView) return _pingMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pingMessage);
  }

  /// Create a copy of DjangoflowWebsocketConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DjangoflowWebsocketConfigCopyWith<_DjangoflowWebsocketConfig>
      get copyWith =>
          __$DjangoflowWebsocketConfigCopyWithImpl<_DjangoflowWebsocketConfig>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DjangoflowWebsocketConfig &&
            (identical(other.connectingMessage, connectingMessage) ||
                other.connectingMessage == connectingMessage) &&
            (identical(other.reConnectingMessage, reConnectingMessage) ||
                other.reConnectingMessage == reConnectingMessage) &&
            (identical(
                    other.failedToSubscribeMessage, failedToSubscribeMessage) ||
                other.failedToSubscribeMessage == failedToSubscribeMessage) &&
            (identical(other.connectionErrorMessage, connectionErrorMessage) ||
                other.connectionErrorMessage == connectionErrorMessage) &&
            (identical(other.serverClosedConnectionMessage,
                    serverClosedConnectionMessage) ||
                other.serverClosedConnectionMessage ==
                    serverClosedConnectionMessage) &&
            (identical(other.wSReconnectDelay, wSReconnectDelay) ||
                other.wSReconnectDelay == wSReconnectDelay) &&
            (identical(other.wSCheckConnectionDelay, wSCheckConnectionDelay) ||
                other.wSCheckConnectionDelay == wSCheckConnectionDelay) &&
            (identical(other.enablePing, enablePing) ||
                other.enablePing == enablePing) &&
            (identical(other.pingInterval, pingInterval) ||
                other.pingInterval == pingInterval) &&
            const DeepCollectionEquality()
                .equals(other._pingMessage, _pingMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      connectingMessage,
      reConnectingMessage,
      failedToSubscribeMessage,
      connectionErrorMessage,
      serverClosedConnectionMessage,
      wSReconnectDelay,
      wSCheckConnectionDelay,
      enablePing,
      pingInterval,
      const DeepCollectionEquality().hash(_pingMessage));

  @override
  String toString() {
    return 'DjangoflowWebsocketConfig(connectingMessage: $connectingMessage, reConnectingMessage: $reConnectingMessage, failedToSubscribeMessage: $failedToSubscribeMessage, connectionErrorMessage: $connectionErrorMessage, serverClosedConnectionMessage: $serverClosedConnectionMessage, wSReconnectDelay: $wSReconnectDelay, wSCheckConnectionDelay: $wSCheckConnectionDelay, enablePing: $enablePing, pingInterval: $pingInterval, pingMessage: $pingMessage)';
  }
}

/// @nodoc
abstract mixin class _$DjangoflowWebsocketConfigCopyWith<$Res>
    implements $DjangoflowWebsocketConfigCopyWith<$Res> {
  factory _$DjangoflowWebsocketConfigCopyWith(_DjangoflowWebsocketConfig value,
          $Res Function(_DjangoflowWebsocketConfig) _then) =
      __$DjangoflowWebsocketConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String connectingMessage,
      String reConnectingMessage,
      String failedToSubscribeMessage,
      String connectionErrorMessage,
      String serverClosedConnectionMessage,
      Duration wSReconnectDelay,
      Duration wSCheckConnectionDelay,
      bool enablePing,
      Duration pingInterval,
      Map<String, dynamic> pingMessage});
}

/// @nodoc
class __$DjangoflowWebsocketConfigCopyWithImpl<$Res>
    implements _$DjangoflowWebsocketConfigCopyWith<$Res> {
  __$DjangoflowWebsocketConfigCopyWithImpl(this._self, this._then);

  final _DjangoflowWebsocketConfig _self;
  final $Res Function(_DjangoflowWebsocketConfig) _then;

  /// Create a copy of DjangoflowWebsocketConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? connectingMessage = null,
    Object? reConnectingMessage = null,
    Object? failedToSubscribeMessage = null,
    Object? connectionErrorMessage = null,
    Object? serverClosedConnectionMessage = null,
    Object? wSReconnectDelay = null,
    Object? wSCheckConnectionDelay = null,
    Object? enablePing = null,
    Object? pingInterval = null,
    Object? pingMessage = null,
  }) {
    return _then(_DjangoflowWebsocketConfig(
      connectingMessage: null == connectingMessage
          ? _self.connectingMessage
          : connectingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      reConnectingMessage: null == reConnectingMessage
          ? _self.reConnectingMessage
          : reConnectingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      failedToSubscribeMessage: null == failedToSubscribeMessage
          ? _self.failedToSubscribeMessage
          : failedToSubscribeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      connectionErrorMessage: null == connectionErrorMessage
          ? _self.connectionErrorMessage
          : connectionErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      serverClosedConnectionMessage: null == serverClosedConnectionMessage
          ? _self.serverClosedConnectionMessage
          : serverClosedConnectionMessage // ignore: cast_nullable_to_non_nullable
              as String,
      wSReconnectDelay: null == wSReconnectDelay
          ? _self.wSReconnectDelay
          : wSReconnectDelay // ignore: cast_nullable_to_non_nullable
              as Duration,
      wSCheckConnectionDelay: null == wSCheckConnectionDelay
          ? _self.wSCheckConnectionDelay
          : wSCheckConnectionDelay // ignore: cast_nullable_to_non_nullable
              as Duration,
      enablePing: null == enablePing
          ? _self.enablePing
          : enablePing // ignore: cast_nullable_to_non_nullable
              as bool,
      pingInterval: null == pingInterval
          ? _self.pingInterval
          : pingInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      pingMessage: null == pingMessage
          ? _self._pingMessage
          : pingMessage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
