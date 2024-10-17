import 'package:djangoflow_oauth/djangoflow_oauth.dart';
import 'package:djangoflow_odoo_oauth/src/odoo_oauth_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;

class OdooPkceFlow extends PKCEFlow {
  OdooPkceFlow(OdooOauthProvider super.provider, {super.httpClient});

  String? state;

  @override
  Future<String?> authorize({
    Map<String, String>? additionalParams,
    FlutterWebAuth2Options? options,
    String scopeSeparator = ' ',
  }) async {
    state = await (provider as OdooOauthProvider).fetchOdooOAuthState();
    return super.authorize(
      additionalParams: {
        ...?additionalParams,
        if (state != null) 'state': state!,
      },
      options: options,
      scopeSeparator: scopeSeparator,
    );
  }

  Future<http.Response> authenticateViaOdooCallback(
    /// Normally the url that the odoo instance redirects to after successful authentication
    /// ODOO_BASE_URL/auth_oauth/signin
    String odooCallbackUrl, {
    /// This can include different parameters like `state`, `access_token`, `id_token`, `code` etc.
    Map<String, String>? additionalParams,
    Map<String, String> headers = const {'Accept': 'text/html'},
  }) async {
    final Uri uri = Uri.parse(odooCallbackUrl).replace(
      queryParameters: {
        ...?additionalParams,
      },
    );

    try {
      return await client.get(uri, headers: headers);
    } catch (e) {
      debugPrint('Error in makeAuthenticatedRequest: $e');
      rethrow;
    }
  }

  void dispose() {
    client.close();
  }
}
