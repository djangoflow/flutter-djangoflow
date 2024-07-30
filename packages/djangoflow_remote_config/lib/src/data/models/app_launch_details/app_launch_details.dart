// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_launch_details.freezed.dart';
part 'app_launch_details.g.dart';

@freezed
class AppLaunchDetails with _$AppLaunchDetails {
  const factory AppLaunchDetails({
    BrandDetails? brand,
    @JsonKey(name: 'app_version') VersionDetails? appVersion,
    UpdatesDetails? updates,
  }) = _AppLaunchDetails;

  factory AppLaunchDetails.fromJson(Map<String, dynamic> json) =>
      _$AppLaunchDetailsFromJson(json);
}

@freezed
class BrandDetails with _$BrandDetails {
  const factory BrandDetails({
    ThemeDetails? theme,
    LogoDetails? logo,
  }) = _BrandDetails;

  factory BrandDetails.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsFromJson(json);
}

@freezed
class ThemeDetails with _$ThemeDetails {
  const factory ThemeDetails({
    Map<String, dynamic>? lightTheme,
    Map<String, dynamic>? darkTheme,
  }) = _ThemeDetails;

  factory ThemeDetails.fromJson(Map<String, dynamic> json) =>
      _$ThemeDetailsFromJson(json);
}

@freezed
class UpdatesDetails with _$UpdatesDetails {
  const factory UpdatesDetails({
    Map<String, DateTime?>? parts,
  }) = _UpdatesDetails;

  factory UpdatesDetails.fromJson(Map<String, dynamic> json) =>
      _$UpdatesDetailsFromJson(json);
}

@freezed
class LogoDetails with _$LogoDetails {
  const factory LogoDetails({
    String? large,
    String? small,
  }) = _LogoDetails;

  factory LogoDetails.fromJson(Map<String, dynamic> json) =>
      _$LogoDetailsFromJson(json);
}

@freezed
class VersionDetails with _$VersionDetails {
  const factory VersionDetails({
    String? latest,
    String? required,
  }) = _VersionDetails;

  factory VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);
}
