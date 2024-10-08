// lib/src/utils/sso_url_extractor.dart
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

class SSOUrlExtractor {
  static Future<String?> extractSSOUrl(String baseUrl) async {
    final response = await http.get(Uri.parse('$baseUrl/web/login'));
    final document = parse(response.body);
    return document
        .querySelector('div.o_auth_oauth_providers a')
        ?.attributes['href'];
  }
}
