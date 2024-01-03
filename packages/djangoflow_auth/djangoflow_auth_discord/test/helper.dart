import 'dart:convert';

class DiscordOAuth2Helper {
  static String params2qs(Map params) {
    final qsList = <String>[];

    params.forEach((k, v) {
      String val;
      if (v is List) {
        val = v.map((p) => p.trim()).join(' ');
      } else if (v is Map) {
        val = jsonEncode(v);
      } else {
        val = v.trim();
      }
      qsList.add(k + '=' + Uri.encodeComponent(val));
      // qsList.add(k + '=' + val);
    });

    return qsList.join('&');
  }

  static String addParamsToUrl(String url, Map params) {
    var qs = params2qs(params);
    String resultUrl = url;
    if (qs.isNotEmpty) {
      resultUrl += '?$qs';
    }

    return resultUrl;
  }
}
