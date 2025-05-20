// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gsi_button_config_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GSIButtonConfigWrapper _$GSIButtonConfigWrapperFromJson(
        Map<String, dynamic> json) =>
    _GSIButtonConfigWrapper(
      type: $enumDecodeNullable(_$GSIWrapperButtonTypeEnumMap, json['type']),
      theme: $enumDecodeNullable(_$GSIWrapperButtonThemeEnumMap, json['theme']),
      size: $enumDecodeNullable(_$GSIWrapperButtonSizeEnumMap, json['size']),
      text: $enumDecodeNullable(_$GSIWrapperButtonTextEnumMap, json['text']),
      shape: $enumDecodeNullable(_$GSIWrapperButtonShapeEnumMap, json['shape']),
      logoAlignment: $enumDecodeNullable(
          _$GSIWrapperButtonLogoAlignmentEnumMap, json['logoAlignment']),
      locale: json['locale'] as String?,
      minimumWidth: (json['minimumWidth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GSIButtonConfigWrapperToJson(
        _GSIButtonConfigWrapper instance) =>
    <String, dynamic>{
      'type': _$GSIWrapperButtonTypeEnumMap[instance.type],
      'theme': _$GSIWrapperButtonThemeEnumMap[instance.theme],
      'size': _$GSIWrapperButtonSizeEnumMap[instance.size],
      'text': _$GSIWrapperButtonTextEnumMap[instance.text],
      'shape': _$GSIWrapperButtonShapeEnumMap[instance.shape],
      'logoAlignment':
          _$GSIWrapperButtonLogoAlignmentEnumMap[instance.logoAlignment],
      'locale': instance.locale,
      'minimumWidth': instance.minimumWidth,
    };

const _$GSIWrapperButtonTypeEnumMap = {
  GSIWrapperButtonType.standard: 'standard',
  GSIWrapperButtonType.icon: 'icon',
};

const _$GSIWrapperButtonThemeEnumMap = {
  GSIWrapperButtonTheme.outline: 'outline',
  GSIWrapperButtonTheme.filledBlue: 'filledBlue',
  GSIWrapperButtonTheme.filledBlack: 'filledBlack',
};

const _$GSIWrapperButtonSizeEnumMap = {
  GSIWrapperButtonSize.large: 'large',
  GSIWrapperButtonSize.medium: 'medium',
  GSIWrapperButtonSize.small: 'small',
};

const _$GSIWrapperButtonTextEnumMap = {
  GSIWrapperButtonText.signinWith: 'signinWith',
  GSIWrapperButtonText.signupWith: 'signupWith',
  GSIWrapperButtonText.continueWith: 'continueWith',
  GSIWrapperButtonText.signin: 'signin',
};

const _$GSIWrapperButtonShapeEnumMap = {
  GSIWrapperButtonShape.rectangular: 'rectangular',
  GSIWrapperButtonShape.pill: 'pill',
};

const _$GSIWrapperButtonLogoAlignmentEnumMap = {
  GSIWrapperButtonLogoAlignment.left: 'left',
  GSIWrapperButtonLogoAlignment.center: 'center',
};
