import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'size_constants.dart';

export 'size_constants.dart';

class AppTheme {
  // Shared sub theme data for light, darktheme.
  static FlexSubThemesData get _commonSubThemeData => const FlexSubThemesData(
        buttonPadding: EdgeInsets.symmetric(
          horizontal: kPadding * 2,
          vertical: kPadding * 2,
        ),
        textButtonSchemeColor: SchemeColor.primary,
        elevatedButtonSchemeColor: SchemeColor.onPrimary,
        elevatedButtonSecondarySchemeColor: SchemeColor.primary,
        outlinedButtonOutlineSchemeColor: SchemeColor.onPrimary,
        outlinedButtonSchemeColor: SchemeColor.onPrimary,
      );

  static ThemeData get light {
    final theme = FlexThemeData.light(
      scheme: FlexScheme.deepPurple,
      subThemesData: _commonSubThemeData,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );

    return theme;
  }

  static ThemeData get dark {
    final theme = FlexThemeData.dark(
      scheme: FlexScheme.deepPurple,
      subThemesData: _commonSubThemeData,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );
    return theme;
  }
}
