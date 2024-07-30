// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActionCategoryState _$ActionCategoryStateFromJson(Map<String, dynamic> json) {
  return _ActionCategoryState.fromJson(json);
}

/// @nodoc
mixin _$ActionCategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<PushActionCategory> get actionCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionCategoryStateCopyWith<ActionCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCategoryStateCopyWith<$Res> {
  factory $ActionCategoryStateCopyWith(
          ActionCategoryState value, $Res Function(ActionCategoryState) then) =
      _$ActionCategoryStateCopyWithImpl<$Res, ActionCategoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<PushActionCategory> actionCategories});
}

/// @nodoc
class _$ActionCategoryStateCopyWithImpl<$Res, $Val extends ActionCategoryState>
    implements $ActionCategoryStateCopyWith<$Res> {
  _$ActionCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionCategories = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionCategories: null == actionCategories
          ? _value.actionCategories
          : actionCategories // ignore: cast_nullable_to_non_nullable
              as List<PushActionCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionCategoryStateImplCopyWith<$Res>
    implements $ActionCategoryStateCopyWith<$Res> {
  factory _$$ActionCategoryStateImplCopyWith(_$ActionCategoryStateImpl value,
          $Res Function(_$ActionCategoryStateImpl) then) =
      __$$ActionCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<PushActionCategory> actionCategories});
}

/// @nodoc
class __$$ActionCategoryStateImplCopyWithImpl<$Res>
    extends _$ActionCategoryStateCopyWithImpl<$Res, _$ActionCategoryStateImpl>
    implements _$$ActionCategoryStateImplCopyWith<$Res> {
  __$$ActionCategoryStateImplCopyWithImpl(_$ActionCategoryStateImpl _value,
      $Res Function(_$ActionCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionCategories = null,
  }) {
    return _then(_$ActionCategoryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionCategories: null == actionCategories
          ? _value._actionCategories
          : actionCategories // ignore: cast_nullable_to_non_nullable
              as List<PushActionCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionCategoryStateImpl implements _ActionCategoryState {
  const _$ActionCategoryStateImpl(
      {this.isLoading = true,
      this.hasError = false,
      final List<PushActionCategory> actionCategories = const []})
      : _actionCategories = actionCategories;

  factory _$ActionCategoryStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionCategoryStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  final List<PushActionCategory> _actionCategories;
  @override
  @JsonKey()
  List<PushActionCategory> get actionCategories {
    if (_actionCategories is EqualUnmodifiableListView)
      return _actionCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actionCategories);
  }

  @override
  String toString() {
    return 'ActionCategoryState(isLoading: $isLoading, hasError: $hasError, actionCategories: $actionCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCategoryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._actionCategories, _actionCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_actionCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionCategoryStateImplCopyWith<_$ActionCategoryStateImpl> get copyWith =>
      __$$ActionCategoryStateImplCopyWithImpl<_$ActionCategoryStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionCategoryStateImplToJson(
      this,
    );
  }
}

abstract class _ActionCategoryState implements ActionCategoryState {
  const factory _ActionCategoryState(
          {final bool isLoading,
          final bool hasError,
          final List<PushActionCategory> actionCategories}) =
      _$ActionCategoryStateImpl;

  factory _ActionCategoryState.fromJson(Map<String, dynamic> json) =
      _$ActionCategoryStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<PushActionCategory> get actionCategories;
  @override
  @JsonKey(ignore: true)
  _$$ActionCategoryStateImplCopyWith<_$ActionCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
