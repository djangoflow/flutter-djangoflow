import 'package:djangoflow_app/src/utils/extensions/package_info_extensions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MockPackageInfo extends Mock implements PackageInfo {}

void main() {
  const String version = '1.0.0';
  const String buildNumber = '1';

  late PackageInfo packageInfo;

  setUpAll(() {
    packageInfo = MockPackageInfo();
    when(() => packageInfo.version).thenReturn(version);
    when(() => packageInfo.buildNumber).thenReturn(buildNumber);
  });

  test(
    'AppVersionExtension provides correct appVersion',
    () {
      final appVersion = packageInfo.appVersion;
      expect(appVersion, '$version($buildNumber)');
    },
  );
}
