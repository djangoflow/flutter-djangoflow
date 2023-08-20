import 'package:djangoflow_auth_apple/djangoflow_auth_apple.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('AppleSocialLogin', () {
    test(
        'login() throws Exception if Apple login is not available on this device',
        () async {
      final appleSocialLogin = AppleSocialLogin(
        type: SocialLoginType(
          id: 'Apple',
          provider: SocialTokenObtainProviderEnum.values.first,
        ),
        scopes: const [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      await expectLater(appleSocialLogin.login(), throwsA(isA<Exception>()));
    });
  });
}
