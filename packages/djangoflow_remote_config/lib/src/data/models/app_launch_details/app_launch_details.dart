import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_launch_details.freezed.dart';
part 'app_launch_details.g.dart';

@freezed
class AppLaunchDetails with _$AppLaunchDetails {
  const factory AppLaunchDetails({
    BrandDetails? brand,
    UpdatesDetails? updates,
  }) = _AppLaunchDetails;

  factory AppLaunchDetails.fromJson(Map<String, dynamic> json) =>
      _$AppLaunchDetailsFromJson(json);
}

@freezed
class BrandDetails with _$BrandDetails {
  const factory BrandDetails({
    ThemeDetails? theme,
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
