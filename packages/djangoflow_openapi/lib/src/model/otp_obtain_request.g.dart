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
          email: $checkedConvert('email', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
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

  writeNotNull('email', instance.email);
  writeNotNull('otp', instance.otp);
  return val;
}
