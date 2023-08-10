import 'package:oauth2_client/oauth2_client.dart';

class DiscordOAuth2Client extends OAuth2Client {
  DiscordOAuth2Client({
    required String redirectUri,
    required String customUriScheme,
    super.credentialsLocation,
    super.refreshUrl,
    super.revokeUrl,
    super.scopeSeparator,
  }) : super(
          authorizeUrl:
              'https://discord.com/oauth2/authorize', //Your service's authorization url
          tokenUrl:
              'https://discord.com/api/oauth2/token', //Your service access token url
          redirectUri: redirectUri,
          customUriScheme: customUriScheme,
        );
}
