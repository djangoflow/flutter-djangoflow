import 'package:freezed_annotation/freezed_annotation.dart';

part 'gsi_button_config_wrapper.freezed.dart';
part 'gsi_button_config_wrapper.g.dart';

/// one to one mapped with GSIButtonConfiguration from google_sign_in_web
@freezed
abstract class GSIButtonConfigWrapper with _$GSIButtonConfigWrapper {
  const factory GSIButtonConfigWrapper({
    GSIWrapperButtonType? type,
    GSIWrapperButtonTheme? theme,
    GSIWrapperButtonSize? size,
    GSIWrapperButtonText? text,
    GSIWrapperButtonShape? shape,
    GSIWrapperButtonLogoAlignment? logoAlignment,
    String? locale,
    double? minimumWidth,
  }) = _GSIButtonConfigWrapper;
  const GSIButtonConfigWrapper._();

  factory GSIButtonConfigWrapper.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$GSIButtonConfigWrapperFromJson(map);
}

enum GSIWrapperButtonType {
  /// A button with text or personalized information.
  standard,

  /// An icon button without text.
  icon;
}

enum GSIWrapperButtonTheme {
  /// A standard button theme.
  outline,

  /// A blue-filled button theme.
  filledBlue,

  /// A black-filled button theme.
  filledBlack;
}

/// The size of the button to be rendered.
///
/// See:
/// * https://developers.google.com/identity/gsi/web/reference/js-reference#size
enum GSIWrapperButtonSize {
  /// A large button (about 40px tall).
  large,

  /// A medium-sized button (about 32px tall).
  medium,

  /// A small button (about 20px tall).
  small;
}

/// The button text.
///
/// See:
/// * https://developers.google.com/identity/gsi/web/reference/js-reference#text
enum GSIWrapperButtonText {
  /// The button text is "Sign in with Google".
  signinWith,

  /// The button text is "Sign up with Google".
  signupWith,

  /// The button text is "Continue with Google".
  continueWith,

  /// The button text is "Sign in".
  signin;
}

/// The button shape.
///
/// See:
/// * https://developers.google.com/identity/gsi/web/reference/js-reference#shape
enum GSIWrapperButtonShape {
  /// The rectangular-shaped button.
  rectangular,

  /// The circle-shaped button.
  pill;
  // Does this need circle and square?
}

/// The alignment of the Google logo. The default value is left. This attribute only applies to the standard button type.
///
/// See:
/// * https://developers.google.com/identity/gsi/web/reference/js-reference#logo_alignment
enum GSIWrapperButtonLogoAlignment {
  /// Left-aligns the Google logo.
  left,

  /// Center-aligns the Google logo.
  center;
}
