import 'package:package_info_plus/package_info_plus.dart';

extension AppVersionExtension on PackageInfo {
  String get appVersion => '$version($buildNumber)';
}
