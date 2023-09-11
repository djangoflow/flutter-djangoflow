// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_action_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushActionCategory _$PushActionCategoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PushActionCategory',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'actions'],
        );
        final val = PushActionCategory(
          name: $checkedConvert('name', (v) => v as String),
          actions: $checkedConvert(
              'actions',
              (v) => (v as List<dynamic>)
                  .map((e) => PushAction.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PushActionCategoryToJson(PushActionCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
    };
