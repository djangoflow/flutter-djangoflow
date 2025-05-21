// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_odoo_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DjangoflowOdooAuthState {
  AuthStatus get status;
  String? get errorMessage;
  String? get baseUrl;
  String? get database;
  @OdooSessionConverter()
  OdooSession? get session;
  List<String>? get dbList;

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DjangoflowOdooAuthStateCopyWith<DjangoflowOdooAuthState> get copyWith =>
      _$DjangoflowOdooAuthStateCopyWithImpl<DjangoflowOdooAuthState>(
          this as DjangoflowOdooAuthState, _$identity);

  /// Serializes this DjangoflowOdooAuthState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DjangoflowOdooAuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.database, database) ||
                other.database == database) &&
            (identical(other.session, session) || other.session == session) &&
            const DeepCollectionEquality().equals(other.dbList, dbList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage, baseUrl,
      database, session, const DeepCollectionEquality().hash(dbList));

  @override
  String toString() {
    return 'DjangoflowOdooAuthState(status: $status, errorMessage: $errorMessage, baseUrl: $baseUrl, database: $database, session: $session, dbList: $dbList)';
  }
}

/// @nodoc
abstract mixin class $DjangoflowOdooAuthStateCopyWith<$Res> {
  factory $DjangoflowOdooAuthStateCopyWith(DjangoflowOdooAuthState value,
          $Res Function(DjangoflowOdooAuthState) _then) =
      _$DjangoflowOdooAuthStateCopyWithImpl;
  @useResult
  $Res call(
      {AuthStatus status,
      String? errorMessage,
      String? baseUrl,
      String? database,
      @OdooSessionConverter() OdooSession? session,
      List<String>? dbList});
}

/// @nodoc
class _$DjangoflowOdooAuthStateCopyWithImpl<$Res>
    implements $DjangoflowOdooAuthStateCopyWith<$Res> {
  _$DjangoflowOdooAuthStateCopyWithImpl(this._self, this._then);

  final DjangoflowOdooAuthState _self;
  final $Res Function(DjangoflowOdooAuthState) _then;

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? baseUrl = freezed,
    Object? database = freezed,
    Object? session = freezed,
    Object? dbList = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      database: freezed == database
          ? _self.database
          : database // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _self.session
          : session // ignore: cast_nullable_to_non_nullable
              as OdooSession?,
      dbList: freezed == dbList
          ? _self.dbList
          : dbList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DjangoflowOdooAuthState implements DjangoflowOdooAuthState {
  const _DjangoflowOdooAuthState(
      {this.status = AuthStatus.initial,
      this.errorMessage,
      this.baseUrl,
      this.database,
      @OdooSessionConverter() this.session,
      final List<String>? dbList})
      : _dbList = dbList;
  factory _DjangoflowOdooAuthState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowOdooAuthStateFromJson(json);

  @override
  @JsonKey()
  final AuthStatus status;
  @override
  final String? errorMessage;
  @override
  final String? baseUrl;
  @override
  final String? database;
  @override
  @OdooSessionConverter()
  final OdooSession? session;
  final List<String>? _dbList;
  @override
  List<String>? get dbList {
    final value = _dbList;
    if (value == null) return null;
    if (_dbList is EqualUnmodifiableListView) return _dbList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DjangoflowOdooAuthStateCopyWith<_DjangoflowOdooAuthState> get copyWith =>
      __$DjangoflowOdooAuthStateCopyWithImpl<_DjangoflowOdooAuthState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DjangoflowOdooAuthStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DjangoflowOdooAuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.database, database) ||
                other.database == database) &&
            (identical(other.session, session) || other.session == session) &&
            const DeepCollectionEquality().equals(other._dbList, _dbList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage, baseUrl,
      database, session, const DeepCollectionEquality().hash(_dbList));

  @override
  String toString() {
    return 'DjangoflowOdooAuthState(status: $status, errorMessage: $errorMessage, baseUrl: $baseUrl, database: $database, session: $session, dbList: $dbList)';
  }
}

/// @nodoc
abstract mixin class _$DjangoflowOdooAuthStateCopyWith<$Res>
    implements $DjangoflowOdooAuthStateCopyWith<$Res> {
  factory _$DjangoflowOdooAuthStateCopyWith(_DjangoflowOdooAuthState value,
          $Res Function(_DjangoflowOdooAuthState) _then) =
      __$DjangoflowOdooAuthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AuthStatus status,
      String? errorMessage,
      String? baseUrl,
      String? database,
      @OdooSessionConverter() OdooSession? session,
      List<String>? dbList});
}

/// @nodoc
class __$DjangoflowOdooAuthStateCopyWithImpl<$Res>
    implements _$DjangoflowOdooAuthStateCopyWith<$Res> {
  __$DjangoflowOdooAuthStateCopyWithImpl(this._self, this._then);

  final _DjangoflowOdooAuthState _self;
  final $Res Function(_DjangoflowOdooAuthState) _then;

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? baseUrl = freezed,
    Object? database = freezed,
    Object? session = freezed,
    Object? dbList = freezed,
  }) {
    return _then(_DjangoflowOdooAuthState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      database: freezed == database
          ? _self.database
          : database // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _self.session
          : session // ignore: cast_nullable_to_non_nullable
              as OdooSession?,
      dbList: freezed == dbList
          ? _self._dbList
          : dbList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
