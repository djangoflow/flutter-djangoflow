import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter/foundation.dart';

class DiscordSocialLoginProvider extends SocialLogin<String> {
  OAuth2Configuration _oAuth2Configuration;

  set oAuth2Configuration(OAuth2Configuration oAuth2Configuration) {
    _oAuth2Configuration = oAuth2Configuration;
  }

  DiscordSocialLoginProvider(this._oAuth2Configuration);
  @override
  Future<String?> login() async {
    final params = _oAuth2Configuration.toJson();

    String? code;
    if (kIsWeb) {
      final browserWindow = WebWindow(
        uri: Uri.https(
          'discord.com',
          'oauth2/authorize',
          params,
        ),
        title: 'Discord Login',
        hasStatusBar: false,
        isResizable: false,
        onClosed: () {},
        onMessage: (event, close) async {
          if (event.data is Map<dynamic, dynamic>) {
            final data = event.data as Map<dynamic, dynamic>;
            if (data.containsKey('type')) {
              if (data['type'] == 'callback') {
                final retrievedUrl = data['url'] as String;
                code = Uri.tryParse(retrievedUrl.replaceFirst('#', '?'))
                    ?.queryParameters['access_token'];
                close();
              }
            }
          }
        },
      );

      await browserWindow.open();

      return code;
    } else {
      throw UnimplementedError(
          'DiscordSocialLoginProvider is not implemented for non-web platforms');
    }
  }

  @override
  Future<void> logout() async {}

  @override
  ProviderEnum get provider => ProviderEnum.discord;
}
