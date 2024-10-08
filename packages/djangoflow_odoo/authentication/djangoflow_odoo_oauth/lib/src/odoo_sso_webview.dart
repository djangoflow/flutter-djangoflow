// lib/src/odoo_sso_webview.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:djangoflow_odoo_oauth/src/utils/session_id_extractor.dart';

class OdooSSOWebView extends StatefulWidget {
  const OdooSSOWebView({
    required this.ssoUrl,
    required this.baseUrl,
    super.key,
  });

  final String ssoUrl;
  final String baseUrl;

  @override
  State<OdooSSOWebView> createState() => _OdooSSOWebViewState();
}

class _OdooSSOWebViewState extends State<OdooSSOWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(widget.baseUrl)) {
              _extractSessionId(request.url);
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.ssoUrl));
  }

  Future<void> _extractSessionId(String url) async {
    if (!mounted) {
      return;
    }

    final sessionId =
        await SessionIdExtractor.extractSessionId(_controller, url);
    if (sessionId != null && mounted) {
      Navigator.of(context).pop(sessionId);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SSO Login'),
        ),
        body: WebViewWidget(controller: _controller),
      );
}
