// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gsi_button_config_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GSIButtonConfigWrapper {
  GSIWrapperButtonType? get type;
  GSIWrapperButtonTheme? get theme;
  GSIWrapperButtonSize? get size;
  GSIWrapperButtonText? get text;
  GSIWrapperButtonShape? get shape;
  GSIWrapperButtonLogoAlignment? get logoAlignment;
  String? get locale;
  double? get minimumWidth;

  /// Create a copy of GSIButtonConfigWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GSIButtonConfigWrapperCopyWith<GSIButtonConfigWrapper> get copyWith =>
      _$GSIButtonConfigWrapperCopyWithImpl<GSIButtonConfigWrapper>(
          this as GSIButtonConfigWrapper, _$identity);

  /// Serializes this GSIButtonConfigWrapper to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GSIButtonConfigWrapper &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.logoAlignment, logoAlignment) ||
                other.logoAlignment == logoAlignment) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.minimumWidth, minimumWidth) ||
                other.minimumWidth == minimumWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, theme, size, text, shape,
      logoAlignment, locale, minimumWidth);

  @override
  String toString() {
    return 'GSIButtonConfigWrapper(type: $type, theme: $theme, size: $size, text: $text, shape: $shape, logoAlignment: $logoAlignment, locale: $locale, minimumWidth: $minimumWidth)';
  }
}

/// @nodoc
abstract mixin class $GSIButtonConfigWrapperCopyWith<$Res> {
  factory $GSIButtonConfigWrapperCopyWith(GSIButtonConfigWrapper value,
          $Res Function(GSIButtonConfigWrapper) _then) =
      _$GSIButtonConfigWrapperCopyWithImpl;
  @useResult
  $Res call(
      {GSIWrapperButtonType? type,
      GSIWrapperButtonTheme? theme,
      GSIWrapperButtonSize? size,
      GSIWrapperButtonText? text,
      GSIWrapperButtonShape? shape,
      GSIWrapperButtonLogoAlignment? logoAlignment,
      String? locale,
      double? minimumWidth});
}

/// @nodoc
class _$GSIButtonConfigWrapperCopyWithImpl<$Res>
    implements $GSIButtonConfigWrapperCopyWith<$Res> {
  _$GSIButtonConfigWrapperCopyWithImpl(this._self, this._then);

  final GSIButtonConfigWrapper _self;
  final $Res Function(GSIButtonConfigWrapper) _then;

  /// Create a copy of GSIButtonConfigWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? theme = freezed,
    Object? size = freezed,
    Object? text = freezed,
    Object? shape = freezed,
    Object? logoAlignment = freezed,
    Object? locale = freezed,
    Object? minimumWidth = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonType?,
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonTheme?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonSize?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonText?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonShape?,
      logoAlignment: freezed == logoAlignment
          ? _self.logoAlignment
          : logoAlignment // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonLogoAlignment?,
      locale: freezed == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumWidth: freezed == minimumWidth
          ? _self.minimumWidth
          : minimumWidth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GSIButtonConfigWrapper extends GSIButtonConfigWrapper {
  const _GSIButtonConfigWrapper(
      {this.type,
      this.theme,
      this.size,
      this.text,
      this.shape,
      this.logoAlignment,
      this.locale,
      this.minimumWidth})
      : super._();
  factory _GSIButtonConfigWrapper.fromJson(Map<String, dynamic> json) =>
      _$GSIButtonConfigWrapperFromJson(json);

  @override
  final GSIWrapperButtonType? type;
  @override
  final GSIWrapperButtonTheme? theme;
  @override
  final GSIWrapperButtonSize? size;
  @override
  final GSIWrapperButtonText? text;
  @override
  final GSIWrapperButtonShape? shape;
  @override
  final GSIWrapperButtonLogoAlignment? logoAlignment;
  @override
  final String? locale;
  @override
  final double? minimumWidth;

  /// Create a copy of GSIButtonConfigWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GSIButtonConfigWrapperCopyWith<_GSIButtonConfigWrapper> get copyWith =>
      __$GSIButtonConfigWrapperCopyWithImpl<_GSIButtonConfigWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GSIButtonConfigWrapperToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GSIButtonConfigWrapper &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.logoAlignment, logoAlignment) ||
                other.logoAlignment == logoAlignment) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.minimumWidth, minimumWidth) ||
                other.minimumWidth == minimumWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, theme, size, text, shape,
      logoAlignment, locale, minimumWidth);

  @override
  String toString() {
    return 'GSIButtonConfigWrapper(type: $type, theme: $theme, size: $size, text: $text, shape: $shape, logoAlignment: $logoAlignment, locale: $locale, minimumWidth: $minimumWidth)';
  }
}

/// @nodoc
abstract mixin class _$GSIButtonConfigWrapperCopyWith<$Res>
    implements $GSIButtonConfigWrapperCopyWith<$Res> {
  factory _$GSIButtonConfigWrapperCopyWith(_GSIButtonConfigWrapper value,
          $Res Function(_GSIButtonConfigWrapper) _then) =
      __$GSIButtonConfigWrapperCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GSIWrapperButtonType? type,
      GSIWrapperButtonTheme? theme,
      GSIWrapperButtonSize? size,
      GSIWrapperButtonText? text,
      GSIWrapperButtonShape? shape,
      GSIWrapperButtonLogoAlignment? logoAlignment,
      String? locale,
      double? minimumWidth});
}

/// @nodoc
class __$GSIButtonConfigWrapperCopyWithImpl<$Res>
    implements _$GSIButtonConfigWrapperCopyWith<$Res> {
  __$GSIButtonConfigWrapperCopyWithImpl(this._self, this._then);

  final _GSIButtonConfigWrapper _self;
  final $Res Function(_GSIButtonConfigWrapper) _then;

  /// Create a copy of GSIButtonConfigWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? theme = freezed,
    Object? size = freezed,
    Object? text = freezed,
    Object? shape = freezed,
    Object? logoAlignment = freezed,
    Object? locale = freezed,
    Object? minimumWidth = freezed,
  }) {
    return _then(_GSIButtonConfigWrapper(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonType?,
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonTheme?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonSize?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonText?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonShape?,
      logoAlignment: freezed == logoAlignment
          ? _self.logoAlignment
          : logoAlignment // ignore: cast_nullable_to_non_nullable
              as GSIWrapperButtonLogoAlignment?,
      locale: freezed == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumWidth: freezed == minimumWidth
          ? _self.minimumWidth
          : minimumWidth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
