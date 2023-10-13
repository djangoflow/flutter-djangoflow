// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_login_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialLoginType _$SocialLoginTypeFromJson(Map<String, dynamic> json) {
  return _SocialLoginType.fromJson(json);
}

/// @nodoc
mixin _$SocialLoginType {
  ProviderEnum get provider => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialLoginTypeCopyWith<SocialLoginType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginTypeCopyWith<$Res> {
  factory $SocialLoginTypeCopyWith(
          SocialLoginType value, $Res Function(SocialLoginType) then) =
      _$SocialLoginTypeCopyWithImpl<$Res, SocialLoginType>;
  @useResult
  $Res call({ProviderEnum provider, String id});
}

/// @nodoc
class _$SocialLoginTypeCopyWithImpl<$Res, $Val extends SocialLoginType>
    implements $SocialLoginTypeCopyWith<$Res> {
  _$SocialLoginTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ProviderEnum,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialLoginTypeImplCopyWith<$Res>
    implements $SocialLoginTypeCopyWith<$Res> {
  factory _$$SocialLoginTypeImplCopyWith(_$SocialLoginTypeImpl value,
          $Res Function(_$SocialLoginTypeImpl) then) =
      __$$SocialLoginTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProviderEnum provider, String id});
}

/// @nodoc
class __$$SocialLoginTypeImplCopyWithImpl<$Res>
    extends _$SocialLoginTypeCopyWithImpl<$Res, _$SocialLoginTypeImpl>
    implements _$$SocialLoginTypeImplCopyWith<$Res> {
  __$$SocialLoginTypeImplCopyWithImpl(
      _$SocialLoginTypeImpl _value, $Res Function(_$SocialLoginTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? id = null,
  }) {
    return _then(_$SocialLoginTypeImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ProviderEnum,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLoginTypeImpl implements _SocialLoginType {
  const _$SocialLoginTypeImpl({required this.provider, required this.id});

  factory _$SocialLoginTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLoginTypeImplFromJson(json);

  @override
  final ProviderEnum provider;
  @override
  final String id;

  @override
  String toString() {
    return 'SocialLoginType(provider: $provider, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginTypeImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provider, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginTypeImplCopyWith<_$SocialLoginTypeImpl> get copyWith =>
      __$$SocialLoginTypeImplCopyWithImpl<_$SocialLoginTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLoginTypeImplToJson(
      this,
    );
  }
}

abstract class _SocialLoginType implements SocialLoginType {
  const factory _SocialLoginType(
      {required final ProviderEnum provider,
      required final String id}) = _$SocialLoginTypeImpl;

  factory _SocialLoginType.fromJson(Map<String, dynamic> json) =
      _$SocialLoginTypeImpl.fromJson;

  @override
  ProviderEnum get provider;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SocialLoginTypeImplCopyWith<_$SocialLoginTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
