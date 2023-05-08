import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTextStyle {
  static TextStyle get displayLarge => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 57,
        height: 1.12,
        letterSpacing: -.25,
      );
  static TextStyle get displayMedium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 45,
        height: 1.16,
      );
  static TextStyle get displaySmall => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        height: 1.22,
      );
  static TextStyle get headlineLarge => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
        height: 1.25,
      );
  static TextStyle get headlineMedium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 28,
        height: 1.29,
      );
  static TextStyle get headlineSmall => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        height: 1.33,
      );
  static TextStyle get titleLarge => const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        height: 1.27,
      );
  static TextStyle get titleMedium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
      );

  static TextStyle get titleSmall => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.43,
      );
  static TextStyle get labelLarge => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.43,
        letterSpacing: 0.1,
      );
  static TextStyle get labelMedium => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.5,
      );
  static TextStyle get labelSmall => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.45,
        letterSpacing: 0.5,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.5,
      );
  static TextStyle get bodyMedium => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.33,
        letterSpacing: 0.4,
      );
  static TextStyle get bodySmall => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.45,
        letterSpacing: 0.5,
      );

  static TextTheme get textTheme => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
      );
}
