// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_launch_details.freezed.dart';
part 'app_launch_details.g.dart';

@freezed
abstract class AppLaunchDetails with _$AppLaunchDetails {
  const factory AppLaunchDetails({
    BrandDetails? brand,
    @JsonKey(name: 'app_version') VersionDetails? appVersion,
    UpdatesDetails? updates,
  }) = _AppLaunchDetails;

  factory AppLaunchDetails.fromJson(Map<String, dynamic> json) =>
      _$AppLaunchDetailsFromJson(json);
}

@freezed
abstract class BrandDetails with _$BrandDetails {
  const factory BrandDetails({
    ThemeDetails? theme,
    LogoDetails? logo,
  }) = _BrandDetails;

  factory BrandDetails.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsFromJson(json);
}

@freezed
abstract class ThemeDetails with _$ThemeDetails {
  const factory ThemeDetails({
    Map<String, dynamic>? lightTheme,
    Map<String, dynamic>? darkTheme,
  }) = _ThemeDetails;

  factory ThemeDetails.fromJson(Map<String, dynamic> json) =>
      _$ThemeDetailsFromJson(json);
}

@freezed
abstract class UpdatesDetails with _$UpdatesDetails {
  const factory UpdatesDetails({
    Map<String, DateTime?>? parts,
  }) = _UpdatesDetails;

  factory UpdatesDetails.fromJson(Map<String, dynamic> json) =>
      _$UpdatesDetailsFromJson(json);
}

@freezed
abstract class LogoDetails with _$LogoDetails {
  const factory LogoDetails({
    String? large,
    String? small,
  }) = _LogoDetails;

  factory LogoDetails.fromJson(Map<String, dynamic> json) =>
      _$LogoDetailsFromJson(json);
}

@freezed
abstract class VersionDetails with _$VersionDetails {
  const factory VersionDetails({
    String? latest,
    String? required,
  }) = _VersionDetails;

  factory VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);
}
