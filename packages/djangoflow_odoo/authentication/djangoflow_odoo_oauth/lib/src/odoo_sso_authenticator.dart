import 'package:flutter/material.dart';
import 'package:djangoflow_odoo_oauth/src/odoo_sso_webview.dart';
import 'package:djangoflow_odoo_oauth/src/utils/sso_url_extractor.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OdooSSOAuthenticator {
  OdooSSOAuthenticator();

  Future<String?> authenticate(
    BuildContext context, {
    required String baseUrl,
  }) async {
    final ssoUrl = await SSOUrlExtractor.extractSSOUrl(baseUrl);
    if (ssoUrl == null) {
      throw Exception('Failed to retrieve SSO URL');
    }
    if (context.mounted) {
      final sessionId = await Navigator.of(context).push<String?>(
        MaterialPageRoute(
          builder: (context) => OdooSSOWebView(
            ssoUrl: ssoUrl,
            baseUrl: baseUrl,
          ),
        ),
      );

      return sessionId;
    } else {
      throw Exception('Context is not mounted');
    }
  }

  Future<void> logout(String sessionId) async {
    WebViewCookieManager cookieManager = WebViewCookieManager();
    await cookieManager.clearCookies();
  }
}
