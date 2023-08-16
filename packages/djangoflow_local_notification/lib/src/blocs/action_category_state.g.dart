// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_category_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActionCategoryState _$$_ActionCategoryStateFromJson(
        Map<String, dynamic> json) =>
    _$_ActionCategoryState(
      isLoading: json['isLoading'] as bool? ?? true,
      hasError: json['hasError'] as bool? ?? false,
      actionCategories: (json['actionCategories'] as List<dynamic>?)
              ?.map(
                  (e) => PushActionCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ActionCategoryStateToJson(
        _$_ActionCategoryState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'hasError': instance.hasError,
      'actionCategories': instance.actionCategories,
    };
