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
          otp: $checkedConvert('otp', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenObtainRequestToJson(TokenObtainRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('otp', instance.otp);
  writeNotNull('email', instance.email);
  return val;
}
