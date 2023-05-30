// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_obtain_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenObtainRequest _$TokenObtainRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenObtainRequest',
      json,
      ($checkedConvert) {
        final val = TokenObtainRequest(
          email: $checkedConvert('email', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'phoneNumber': 'phone_number'},
    );

Map<String, dynamic> _$TokenObtainRequestToJson(TokenObtainRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('otp', instance.otp);
  writeNotNull('password', instance.password);
  return val;
}
