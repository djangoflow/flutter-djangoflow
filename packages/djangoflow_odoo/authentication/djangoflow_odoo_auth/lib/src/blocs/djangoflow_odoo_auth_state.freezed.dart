// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djangoflow_odoo_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DjangoflowOdooAuthState _$DjangoflowOdooAuthStateFromJson(
    Map<String, dynamic> json) {
  return _DjangoflowOdooAuthState.fromJson(json);
}

/// @nodoc
mixin _$DjangoflowOdooAuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get database => throw _privateConstructorUsedError;
  @OdooSessionConverter()
  OdooSession? get session => throw _privateConstructorUsedError;
  List<String>? get dbList => throw _privateConstructorUsedError;

  /// Serializes this DjangoflowOdooAuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DjangoflowOdooAuthStateCopyWith<DjangoflowOdooAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DjangoflowOdooAuthStateCopyWith<$Res> {
  factory $DjangoflowOdooAuthStateCopyWith(DjangoflowOdooAuthState value,
          $Res Function(DjangoflowOdooAuthState) then) =
      _$DjangoflowOdooAuthStateCopyWithImpl<$Res, DjangoflowOdooAuthState>;
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
class _$DjangoflowOdooAuthStateCopyWithImpl<$Res,
        $Val extends DjangoflowOdooAuthState>
    implements $DjangoflowOdooAuthStateCopyWith<$Res> {
  _$DjangoflowOdooAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      database: freezed == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as OdooSession?,
      dbList: freezed == dbList
          ? _value.dbList
          : dbList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DjangoflowOdooAuthStateImplCopyWith<$Res>
    implements $DjangoflowOdooAuthStateCopyWith<$Res> {
  factory _$$DjangoflowOdooAuthStateImplCopyWith(
          _$DjangoflowOdooAuthStateImpl value,
          $Res Function(_$DjangoflowOdooAuthStateImpl) then) =
      __$$DjangoflowOdooAuthStateImplCopyWithImpl<$Res>;
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
class __$$DjangoflowOdooAuthStateImplCopyWithImpl<$Res>
    extends _$DjangoflowOdooAuthStateCopyWithImpl<$Res,
        _$DjangoflowOdooAuthStateImpl>
    implements _$$DjangoflowOdooAuthStateImplCopyWith<$Res> {
  __$$DjangoflowOdooAuthStateImplCopyWithImpl(
      _$DjangoflowOdooAuthStateImpl _value,
      $Res Function(_$DjangoflowOdooAuthStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$DjangoflowOdooAuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      database: freezed == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as OdooSession?,
      dbList: freezed == dbList
          ? _value._dbList
          : dbList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DjangoflowOdooAuthStateImpl implements _DjangoflowOdooAuthState {
  const _$DjangoflowOdooAuthStateImpl(
      {this.status = AuthStatus.initial,
      this.errorMessage,
      this.baseUrl,
      this.database,
      @OdooSessionConverter() this.session,
      final List<String>? dbList})
      : _dbList = dbList;

  factory _$DjangoflowOdooAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DjangoflowOdooAuthStateImplFromJson(json);

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

  @override
  String toString() {
    return 'DjangoflowOdooAuthState(status: $status, errorMessage: $errorMessage, baseUrl: $baseUrl, database: $database, session: $session, dbList: $dbList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DjangoflowOdooAuthStateImpl &&
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

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DjangoflowOdooAuthStateImplCopyWith<_$DjangoflowOdooAuthStateImpl>
      get copyWith => __$$DjangoflowOdooAuthStateImplCopyWithImpl<
          _$DjangoflowOdooAuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DjangoflowOdooAuthStateImplToJson(
      this,
    );
  }
}

abstract class _DjangoflowOdooAuthState implements DjangoflowOdooAuthState {
  const factory _DjangoflowOdooAuthState(
      {final AuthStatus status,
      final String? errorMessage,
      final String? baseUrl,
      final String? database,
      @OdooSessionConverter() final OdooSession? session,
      final List<String>? dbList}) = _$DjangoflowOdooAuthStateImpl;

  factory _DjangoflowOdooAuthState.fromJson(Map<String, dynamic> json) =
      _$DjangoflowOdooAuthStateImpl.fromJson;

  @override
  AuthStatus get status;
  @override
  String? get errorMessage;
  @override
  String? get baseUrl;
  @override
  String? get database;
  @override
  @OdooSessionConverter()
  OdooSession? get session;
  @override
  List<String>? get dbList;

  /// Create a copy of DjangoflowOdooAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DjangoflowOdooAuthStateImplCopyWith<_$DjangoflowOdooAuthStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
