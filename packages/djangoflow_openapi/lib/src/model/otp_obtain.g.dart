// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_obtain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPObtain _$OTPObtainFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OTPObtain',
      json,
      ($checkedConvert) {
        final val = OTPObtain(
          email: $checkedConvert('email', (v) => v as String?),
          otp: $checkedConvert('otp', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OTPObtainToJson(OTPObtain instance) {
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
