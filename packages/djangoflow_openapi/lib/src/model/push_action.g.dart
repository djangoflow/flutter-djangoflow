// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushAction _$PushActionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PushAction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'button_text'],
        );
        final val = PushAction(
          name: $checkedConvert('name', (v) => v as String),
          buttonText: $checkedConvert('button_text', (v) => v as String),
          authenticationRequired:
              $checkedConvert('authentication_required', (v) => v as bool?),
          destructive: $checkedConvert('destructive', (v) => v as bool?),
          foreground: $checkedConvert('foreground', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'buttonText': 'button_text',
        'authenticationRequired': 'authentication_required'
      },
    );

Map<String, dynamic> _$PushActionToJson(PushAction instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'button_text': instance.buttonText,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authentication_required', instance.authenticationRequired);
  writeNotNull('destructive', instance.destructive);
  writeNotNull('foreground', instance.foreground);
  return val;
}
