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
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'phoneNumber': 'phone_number'},
    );

Map<String, dynamic> _$OTPObtainRequestToJson(OTPObtainRequest instance) {
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
