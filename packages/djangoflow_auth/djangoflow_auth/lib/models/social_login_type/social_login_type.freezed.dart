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
abstract class _$$_SocialLoginTypeCopyWith<$Res>
    implements $SocialLoginTypeCopyWith<$Res> {
  factory _$$_SocialLoginTypeCopyWith(
          _$_SocialLoginType value, $Res Function(_$_SocialLoginType) then) =
      __$$_SocialLoginTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProviderEnum provider, String id});
}

/// @nodoc
class __$$_SocialLoginTypeCopyWithImpl<$Res>
    extends _$SocialLoginTypeCopyWithImpl<$Res, _$_SocialLoginType>
    implements _$$_SocialLoginTypeCopyWith<$Res> {
  __$$_SocialLoginTypeCopyWithImpl(
      _$_SocialLoginType _value, $Res Function(_$_SocialLoginType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? id = null,
  }) {
    return _then(_$_SocialLoginType(
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
class _$_SocialLoginType implements _SocialLoginType {
  const _$_SocialLoginType({required this.provider, required this.id});

  factory _$_SocialLoginType.fromJson(Map<String, dynamic> json) =>
      _$$_SocialLoginTypeFromJson(json);

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
            other is _$_SocialLoginType &&
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
  _$$_SocialLoginTypeCopyWith<_$_SocialLoginType> get copyWith =>
      __$$_SocialLoginTypeCopyWithImpl<_$_SocialLoginType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialLoginTypeToJson(
      this,
    );
  }
}

abstract class _SocialLoginType implements SocialLoginType {
  const factory _SocialLoginType(
      {required final ProviderEnum provider,
      required final String id}) = _$_SocialLoginType;

  factory _SocialLoginType.fromJson(Map<String, dynamic> json) =
      _$_SocialLoginType.fromJson;

  @override
  ProviderEnum get provider;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_SocialLoginTypeCopyWith<_$_SocialLoginType> get copyWith =>
      throw _privateConstructorUsedError;
}
