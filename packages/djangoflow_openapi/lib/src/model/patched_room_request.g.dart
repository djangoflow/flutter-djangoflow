// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_room_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedRoomRequest _$PatchedRoomRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedRoomRequest',
      json,
      ($checkedConvert) {
        final val = PatchedRoomRequest(
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          isPublic: $checkedConvert('is_public', (v) => v as bool?),
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'isPublic': 'is_public'},
    );

Map<String, dynamic> _$PatchedRoomRequestToJson(PatchedRoomRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('is_public', instance.isPublic);
  writeNotNull('users', instance.users);
  return val;
}
