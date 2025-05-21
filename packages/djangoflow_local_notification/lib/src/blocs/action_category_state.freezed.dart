// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActionCategoryState {
  bool get isLoading;
  bool get hasError;
  List<PushActionCategory> get actionCategories;

  /// Create a copy of ActionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActionCategoryStateCopyWith<ActionCategoryState> get copyWith =>
      _$ActionCategoryStateCopyWithImpl<ActionCategoryState>(
          this as ActionCategoryState, _$identity);

  /// Serializes this ActionCategoryState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActionCategoryState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other.actionCategories, actionCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(actionCategories));

  @override
  String toString() {
    return 'ActionCategoryState(isLoading: $isLoading, hasError: $hasError, actionCategories: $actionCategories)';
  }
}

/// @nodoc
abstract mixin class $ActionCategoryStateCopyWith<$Res> {
  factory $ActionCategoryStateCopyWith(
          ActionCategoryState value, $Res Function(ActionCategoryState) _then) =
      _$ActionCategoryStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<PushActionCategory> actionCategories});
}

/// @nodoc
class _$ActionCategoryStateCopyWithImpl<$Res>
    implements $ActionCategoryStateCopyWith<$Res> {
  _$ActionCategoryStateCopyWithImpl(this._self, this._then);

  final ActionCategoryState _self;
  final $Res Function(ActionCategoryState) _then;

  /// Create a copy of ActionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionCategories = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionCategories: null == actionCategories
          ? _self.actionCategories
          : actionCategories // ignore: cast_nullable_to_non_nullable
              as List<PushActionCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ActionCategoryState implements ActionCategoryState {
  const _ActionCategoryState(
      {this.isLoading = true,
      this.hasError = false,
      final List<PushActionCategory> actionCategories = const []})
      : _actionCategories = actionCategories;
  factory _ActionCategoryState.fromJson(Map<String, dynamic> json) =>
      _$ActionCategoryStateFromJson(json);

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

  /// Create a copy of ActionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActionCategoryStateCopyWith<_ActionCategoryState> get copyWith =>
      __$ActionCategoryStateCopyWithImpl<_ActionCategoryState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActionCategoryStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActionCategoryState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._actionCategories, _actionCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_actionCategories));

  @override
  String toString() {
    return 'ActionCategoryState(isLoading: $isLoading, hasError: $hasError, actionCategories: $actionCategories)';
  }
}

/// @nodoc
abstract mixin class _$ActionCategoryStateCopyWith<$Res>
    implements $ActionCategoryStateCopyWith<$Res> {
  factory _$ActionCategoryStateCopyWith(_ActionCategoryState value,
          $Res Function(_ActionCategoryState) _then) =
      __$ActionCategoryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<PushActionCategory> actionCategories});
}

/// @nodoc
class __$ActionCategoryStateCopyWithImpl<$Res>
    implements _$ActionCategoryStateCopyWith<$Res> {
  __$ActionCategoryStateCopyWithImpl(this._self, this._then);

  final _ActionCategoryState _self;
  final $Res Function(_ActionCategoryState) _then;

  /// Create a copy of ActionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionCategories = null,
  }) {
    return _then(_ActionCategoryState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionCategories: null == actionCategories
          ? _self._actionCategories
          : actionCategories // ignore: cast_nullable_to_non_nullable
              as List<PushActionCategory>,
    ));
  }
}

// dart format on
