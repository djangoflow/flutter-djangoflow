import 'dart:convert';

import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_auth_facebook/djangoflow_auth_facebook.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';

import 'data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('authentication', () {
    const MethodChannel channel = MethodChannel(
      'app.meedu/flutter_facebook_auth',
    );
    late FacebookAuth facebookAuth;
    late bool isLogged, isAutoLogAppEventsEnabled;

    setUp(
      () {
        debugDefaultTargetPlatformOverride = TargetPlatform.android;
        isLogged = false;
        isAutoLogAppEventsEnabled = false;
        facebookAuth = FacebookAuth.getInstance();
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(
          channel,
          (MethodCall call) async {
            switch (call.method) {
              case 'login':
                isLogged = true;
                return mockAccessToken;
              case 'expressLogin':
                isLogged = true;
                return mockAccessToken;
              case 'getAccessToken':
                return isLogged ? mockAccessToken : null;
              case 'logOut':
                isLogged = false;
                return null;

              case 'getUserData':
                const data = mockUserData;
                if (defaultTargetPlatform == TargetPlatform.android) {
                  return jsonEncode(data);
                }
                return data;
              case 'isAutoLogAppEventsEnabled':
                return isAutoLogAppEventsEnabled;

              case 'updateAutoLogAppEventsEnabled':
                final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
                if (isIOS) {
                  isAutoLogAppEventsEnabled = call.arguments['enabled'];
                }
            }
            return null;
          },
        );
      },
    );

    test('login and logout request', () async {
      expect(facebookAuth.isWebSdkInitialized, false);
      expect(await facebookAuth.accessToken, null);
      await facebookAuth.webAndDesktopInitialize(
        appId: '1233443',
        cookie: true,
        xfbml: true,
        version: 'v13.0',
      );
      final facebookSocialLogin = FacebookSocialLogin(
        type: SocialLoginType(
          id: 'Facebook',
          provider: SocialTokenObtainProviderEnum.values.first,
        ),
      );
      final result = await facebookSocialLogin.login();
      expect(result, isA<LoginResult>());

      expect(await facebookAuth.accessToken, isNotNull);

      await facebookSocialLogin.logout();
      expect(await facebookAuth.accessToken, null);
    });
  });
}
