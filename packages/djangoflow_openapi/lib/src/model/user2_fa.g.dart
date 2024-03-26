// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user2_fa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User2FA _$User2FAFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User2FA',
      json,
      ($checkedConvert) {
        final val = User2FA(
          isRequired: $checkedConvert('is_required', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'isRequired': 'is_required'},
    );

Map<String, dynamic> _$User2FAToJson(User2FA instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_required', instance.isRequired);
  return val;
}
