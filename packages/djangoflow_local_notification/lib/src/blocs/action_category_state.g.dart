// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_category_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionCategoryStateImpl _$$ActionCategoryStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionCategoryStateImpl(
      isLoading: json['isLoading'] as bool? ?? true,
      hasError: json['hasError'] as bool? ?? false,
      actionCategories: (json['actionCategories'] as List<dynamic>?)
              ?.map(
                  (e) => PushActionCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ActionCategoryStateImplToJson(
        _$ActionCategoryStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'hasError': instance.hasError,
      'actionCategories': instance.actionCategories,
    };
