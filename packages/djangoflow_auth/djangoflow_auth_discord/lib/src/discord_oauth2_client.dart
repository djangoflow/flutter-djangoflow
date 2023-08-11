import 'package:oauth2_client/oauth2_client.dart';

class DiscordOAuth2Client extends OAuth2Client {
  DiscordOAuth2Client({
    required super.redirectUri,
    required super.customUriScheme,
    super.credentialsLocation,
    super.refreshUrl,
    super.revokeUrl,
    super.scopeSeparator,
    super.authorizeUrl = 'https://discord.com/oauth2/authorize',
    super.tokenUrl = 'https://discord.com/api/oauth2/token',
  });
}
