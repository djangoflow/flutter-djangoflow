import 'package:djangoflow_remote_config/src/data/models/app_launch_details/app_launch_details.dart';
import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';

Map<String, dynamic> get appLaunchFallbackData => AppLaunchDetails(
      brand: BrandDetails(
        theme: ThemeDetails(
          lightTheme: lightThemeFallbackData,
          darkTheme: darkThemeFallbackData,
        ),
      ),
    ).toJson();

final lightThemeFallbackData = ThemeEncoder.encodeThemeData(
  FallbackThemeData().lightTheme,
);

final darkThemeFallbackData = ThemeEncoder.encodeThemeData(
  FallbackThemeData().darkTheme,
);

class FallbackThemeData {
  static final FallbackThemeData _instance = FallbackThemeData._();

  FallbackThemeData._();

  factory FallbackThemeData() => _instance;

  ThemeData lightTheme = ThemeData.light();

  ThemeData darkTheme = ThemeData.dark();
}
