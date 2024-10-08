// lib/src/utils/session_id_extractor.dart

import 'package:collection/collection.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';

class SessionIdExtractor {
  static Future<String?> extractSessionId(
    WebViewController controller,
    String url,
  ) async {
    final cookieManager = WebviewCookieManager();
    final cookies = await cookieManager.getCookies(url);

    String? sessionId = cookies
        .firstWhereOrNull(
          (cookie) => cookie.name == 'session_id',
        )
        ?.value;

    if (sessionId == null || sessionId.isEmpty) {
      final allCookies = await controller
          .runJavaScriptReturningResult('document.cookie') as String;
      final cookieList = allCookies.split('; ');
      for (final cookie in cookieList) {
        if (cookie.startsWith('session_id=')) {
          sessionId = cookie.split('=')[1];
          break;
        }
      }
    }

    return sessionId != null && sessionId.isNotEmpty ? sessionId : null;
  }
}
