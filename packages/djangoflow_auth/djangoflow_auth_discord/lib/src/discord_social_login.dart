import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:djangoflow_auth_discord/src/discord_oauth2_client.dart';

class DiscordSocialLoginProvider extends SocialLogin<String> {

  DiscordSocialLoginProvider({
    required this.oAuth2Configuration,
    required super.type,
  });
  OAuth2Configuration oAuth2Configuration;
  @override
  Future<String?> login() async {
    final params = oAuth2Configuration.toJson();

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
      if (oAuth2Configuration.customUriScheme == null) {
        throw Exception('customUriScheme is required for non-web platforms');
      }
      final discordOAuth2Client = DiscordOAuth2Client(
        customUriScheme: oAuth2Configuration.customUriScheme!,
        redirectUri: oAuth2Configuration.redirectUri,
      );

      final accessTokenResponse =
          await discordOAuth2Client.getTokenWithImplicitGrantFlow(
        clientId: oAuth2Configuration.clientId,
        customParams: params,
        enableState: oAuth2Configuration.state != null,
        scopes: oAuth2Configuration.scope.split(' '),
      );

      return accessTokenResponse.accessToken;
    }
  }

  @override
  Future<void> logout() async {}
}
