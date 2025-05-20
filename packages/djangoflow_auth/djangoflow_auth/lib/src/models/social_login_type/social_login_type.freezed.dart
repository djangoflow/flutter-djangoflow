// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_login_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialLoginType {
  ProviderEnum get provider;
  String get id;

  /// Create a copy of SocialLoginType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocialLoginTypeCopyWith<SocialLoginType> get copyWith =>
      _$SocialLoginTypeCopyWithImpl<SocialLoginType>(
          this as SocialLoginType, _$identity);

  /// Serializes this SocialLoginType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocialLoginType &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provider, id);

  @override
  String toString() {
    return 'SocialLoginType(provider: $provider, id: $id)';
  }
}

/// @nodoc
abstract mixin class $SocialLoginTypeCopyWith<$Res> {
  factory $SocialLoginTypeCopyWith(
          SocialLoginType value, $Res Function(SocialLoginType) _then) =
      _$SocialLoginTypeCopyWithImpl;
  @useResult
  $Res call({ProviderEnum provider, String id});
}

/// @nodoc
class _$SocialLoginTypeCopyWithImpl<$Res>
    implements $SocialLoginTypeCopyWith<$Res> {
  _$SocialLoginTypeCopyWithImpl(this._self, this._then);

  final SocialLoginType _self;
  final $Res Function(SocialLoginType) _then;

  /// Create a copy of SocialLoginType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ProviderEnum,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SocialLoginType implements SocialLoginType {
  const _SocialLoginType({required this.provider, required this.id});
  factory _SocialLoginType.fromJson(Map<String, dynamic> json) =>
      _$SocialLoginTypeFromJson(json);

  @override
  final ProviderEnum provider;
  @override
  final String id;

  /// Create a copy of SocialLoginType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocialLoginTypeCopyWith<_SocialLoginType> get copyWith =>
      __$SocialLoginTypeCopyWithImpl<_SocialLoginType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocialLoginTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialLoginType &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provider, id);

  @override
  String toString() {
    return 'SocialLoginType(provider: $provider, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SocialLoginTypeCopyWith<$Res>
    implements $SocialLoginTypeCopyWith<$Res> {
  factory _$SocialLoginTypeCopyWith(
          _SocialLoginType value, $Res Function(_SocialLoginType) _then) =
      __$SocialLoginTypeCopyWithImpl;
  @override
  @useResult
  $Res call({ProviderEnum provider, String id});
}

/// @nodoc
class __$SocialLoginTypeCopyWithImpl<$Res>
    implements _$SocialLoginTypeCopyWith<$Res> {
  __$SocialLoginTypeCopyWithImpl(this._self, this._then);

  final _SocialLoginType _self;
  final $Res Function(_SocialLoginType) _then;

  /// Create a copy of SocialLoginType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? provider = null,
    Object? id = null,
  }) {
    return _then(_SocialLoginType(
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ProviderEnum,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
