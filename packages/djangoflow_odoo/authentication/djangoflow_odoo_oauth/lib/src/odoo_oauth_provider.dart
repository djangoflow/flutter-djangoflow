import 'package:djangoflow_oauth/djangoflow_oauth.dart';
import 'package:djangoflow_odoo_oauth/src/utils/sso_url_extractor.dart';

class OdooOauthProvider implements OAuthProvider {
  OdooOauthProvider({
    required this.clientId,
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    required this.redirectUrl,
    required this.scopes,
    required this.odooBaseUrl,
  });

  final String odooBaseUrl;

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

  Future<String?> fetchOdooOAuthState() async {
    final result = await SSOUrlExtractor.extractSSOUrl(odooBaseUrl);
    if (result != null) {
      final uri = Uri.parse(result);
      final state = uri.queryParameters['state'];
      return state;
    }
    return null;
  }
}
