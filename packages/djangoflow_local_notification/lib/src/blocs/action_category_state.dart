import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_category_state.freezed.dart';
part 'action_category_state.g.dart';

@freezed
abstract class ActionCategoryState with _$ActionCategoryState {
  const factory ActionCategoryState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default([]) List<PushActionCategory> actionCategories,
  }) = _ActionCategoryState;

  factory ActionCategoryState.fromJson(Map<String, dynamic> json) =>
      _$ActionCategoryStateFromJson(json);
}
