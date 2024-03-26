// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user2_fa_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUser2FARequest _$PatchedUser2FARequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedUser2FARequest',
      json,
      ($checkedConvert) {
        final val = PatchedUser2FARequest(
          isRequired: $checkedConvert('is_required', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'isRequired': 'is_required'},
    );

Map<String, dynamic> _$PatchedUser2FARequestToJson(
    PatchedUser2FARequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_required', instance.isRequired);
  return val;
}
