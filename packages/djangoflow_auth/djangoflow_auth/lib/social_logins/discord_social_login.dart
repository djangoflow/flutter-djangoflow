import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter/foundation.dart';
import 'package:oauth2_client/oauth2_client.dart';

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
      if (_oAuth2Configuration.customUriScheme == null) {
        throw Exception('customUriScheme is required for non-web platforms');
      }
      final discordOAuth2Client = DiscordOAuth2Client(
        customUriScheme: _oAuth2Configuration.customUriScheme!,
        redirectUri: _oAuth2Configuration.redirectUri,
      );

      final accessTokenResponse =
          await discordOAuth2Client.getTokenWithImplicitGrantFlow(
        clientId: _oAuth2Configuration.clientId,
        customParams: params,
        enableState: _oAuth2Configuration.state != null,
        scopes: _oAuth2Configuration.scope.split(' '),
      );

      return accessTokenResponse.accessToken;
    }
  }

  @override
  Future<void> logout() async {}

  @override
  ProviderEnum get provider => ProviderEnum.discord;
}

class DiscordOAuth2Client extends OAuth2Client {
  DiscordOAuth2Client(
      {required String redirectUri, required String customUriScheme})
      : super(
          authorizeUrl:
              'https://discord.com/oauth2/authorize', //Your service's authorization url
          tokenUrl:
              'https://discord.com/api/oauth2/token', //Your service access token url
          redirectUri: redirectUri,
          customUriScheme: customUriScheme,
        );
}
