import 'package:djangoflow_oauth/src/oauth_provider.dart';

class StaticOAuthProvider implements OAuthProvider {
  StaticOAuthProvider({
    required this.clientId,
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    required this.redirectUrl,
    required this.scopes,
  });

  @override
  final String clientId;

  @override
  final String authorizationEndpoint;

  @override
  final String tokenEndpoint;

  @override
  final String redirectUrl;

  @override
  final List<String> scopes;
}
