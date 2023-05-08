import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppColors {
  static FlexSchemeColor get flexSchemeColor => const FlexSchemeColor(
        primary: primary,
        primaryContainer: primaryContainer,
        secondary: secondary,
        secondaryContainer: secondaryContainer,
        tertiary: tertiary,
        tertiaryContainer: tertiaryContainer,
        appBarColor: appBarColor,
        error: error,
      );
  // Light theme colors
  static const Color primary = Color(0xff0055d5);
  static const Color primaryContainer = Color(0xffdae2ff);
  static const Color secondary = Color(0xffbac5ec);
  static const Color secondaryContainer = Color(0xff3b4666);
  static const Color tertiary = Color(0xff34b46e);
  static const Color tertiaryContainer = Color(0xffbeeaf7);
  static const Color appBarColor = Color(0x0DB3C5FF);
  static const Color error = Color(0xffb00020);
}
