import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'size_constants.dart';
import 'typography.dart';

export 'colors.dart';
export 'size_constants.dart';
export 'typography.dart';

// TODO  fix theme later with black,blue and green from fimga
class AppTheme {
  static const double _buttonRadius = 10;
  // Shared sub theme data for light, darktheme.
  static FlexSubThemesData get _commonSubThemeData => FlexSubThemesData(
        buttonPadding: const EdgeInsets.symmetric(
          horizontal: kPadding * 2,
          vertical: kPadding * 2.5,
        ),
        elevatedButtonRadius: _buttonRadius,
        textButtonRadius: _buttonRadius,
        outlinedButtonRadius: _buttonRadius,
        inputDecoratorRadius: _buttonRadius,
        elevatedButtonTextStyle:
            MaterialStateProperty.all(AppTextStyle.titleMedium),
        elevatedButtonSchemeColor: SchemeColor.onPrimary,
        elevatedButtonSecondarySchemeColor: SchemeColor.primary,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        checkboxSchemeColor: SchemeColor.primary,
        inputDecoratorSchemeColor: SchemeColor.tertiary,
        inputDecoratorIsFilled: false,
        fabSchemeColor: SchemeColor.primary,
        chipSchemeColor: SchemeColor.primary,
      );
  static ThemeData get light {
    final theme = FlexThemeData.light(
      colors: AppColors.flexSchemeColor,
      textTheme: AppTextStyle.textTheme,
      primaryTextTheme: AppTextStyle.textTheme.apply(
        bodyColor: AppColors.primary,
        displayColor: AppColors.primary,
        decorationColor: AppColors.primary,
      ),
      usedColors: 2,
      surfaceMode: FlexSurfaceMode.level,
      blendLevel: 9,
      appBarStyle: FlexAppBarStyle.scaffoldBackground,
      surfaceTint: const Color(0xff000000),
      tones: FlexTones.material(Brightness.light).onMainsUseBW(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      subThemesData: _commonSubThemeData,
    );

    return theme;
  }

  static ThemeData get dark {
    final theme = FlexThemeData.dark(
        colors: AppColors.flexSchemeColor,
        textTheme: AppTextStyle.textTheme,
        primaryTextTheme: AppTextStyle.textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
          decorationColor: Colors.white,
        ),
        usedColors: 6,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        subThemesData: _commonSubThemeData);
    return theme;
  }
  // TODO implement setting up google font https://pub.dev/packages/google_fonts#getting-started
  // static ThemeData applyGoogleFontTextTheme(ThemeData baseTheme){
  //   return baseTheme.copyWith(
  //     textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
  //   );
  // }
}
