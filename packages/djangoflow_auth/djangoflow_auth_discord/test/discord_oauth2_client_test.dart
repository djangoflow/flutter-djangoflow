import 'package:djangoflow_auth_discord/djangoflow_auth_discord.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oauth2_client/interfaces.dart';
import 'package:http/http.dart' as http;
import 'discord_oauth2_client_test.mocks.dart';
import 'helper.dart';

@GenerateMocks([BaseWebAuth])
@GenerateMocks([http.Client])
void main() {
  final webAuthClient = MockBaseWebAuth();

  const customUriScheme = 'myurlscheme';
  const redirectUri = 'myurlscheme://oauth2';
  const clientId = 'myclientid';

  const authorizeUrl = 'http://my.test.app/authorize';
  const tokenUrl = 'http://my.test.app/token';

  const state = 'test_state';

  group('Implicit flow Grant.', () {
    final oauth2Client = DiscordOAuth2Client(
        authorizeUrl: authorizeUrl,
        tokenUrl: tokenUrl,
        redirectUri: redirectUri,
        customUriScheme: customUriScheme,);

    test('Get new token', () async {
      final httpClient = MockClient();

      const accessToken = '12345';

      final authParams = {
        'response_type': 'token',
        'client_id': clientId,
        'redirect_uri': redirectUri,
        'state': state,
      };

      when(webAuthClient.authenticate(
              url: DiscordOAuth2Helper.addParamsToUrl(
                  oauth2Client.authorizeUrl, authParams,),
              callbackUrlScheme: customUriScheme,
              redirectUrl: redirectUri,),)
          .thenAnswer((_) async =>
              '$redirectUri#access_token=$accessToken&token_type=bearer&state=$state',);

      final tknResponse = await oauth2Client.getTokenWithImplicitGrantFlow(
          clientId: clientId,
          state: state,
          httpClient: httpClient,
          webAuthClient: webAuthClient,);

      expect(tknResponse.accessToken, accessToken);
    });
  });
}
