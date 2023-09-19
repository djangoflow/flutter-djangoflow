// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomRequest _$RoomRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
      'RoomRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['title'],
        );
        final val = RoomRequest(
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          isPublic: $checkedConvert('is_public', (v) => v as bool?),
          users: $checkedConvert('users',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'isPublic': 'is_public'},
    );

Map<String, dynamic> _$RoomRequestToJson(RoomRequest instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('is_public', instance.isPublic);
  writeNotNull('users', instance.users);
  return val;
}
