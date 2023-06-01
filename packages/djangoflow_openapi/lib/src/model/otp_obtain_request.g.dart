// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_obtain_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPObtainRequest _$OTPObtainRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OTPObtainRequest',
      json,
      ($checkedConvert) {
        final val = OTPObtainRequest(
          username: $checkedConvert('username', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPObtainRequestToJson(OTPObtainRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('otp', instance.otp);
  writeNotNull('password', instance.password);
  return val;
}
