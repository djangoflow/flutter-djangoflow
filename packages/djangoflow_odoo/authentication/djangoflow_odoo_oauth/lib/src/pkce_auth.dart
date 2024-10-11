import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

/// Configuration for PKCE authentication.
class PKCEConfig {
  PKCEConfig({
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    required this.clientId,
    required this.redirectUrl,
    required this.scopes,
    this.additionalAuthorizationParams = const {},
    this.additionalTokenParams = const {},
  });

  final String authorizationEndpoint;
  final String tokenEndpoint;
  final String clientId;
  final String redirectUrl;
  final List<String> scopes;
  final Map<String, String> additionalAuthorizationParams;
  final Map<String, String> additionalTokenParams;
}

/// A customizable HTTP client that doesn't follow redirects.
class NoRedirectHttpClient extends http.BaseClient {
  NoRedirectHttpClient([http.Client? innerClient])
      : _inner = innerClient ?? http.Client();

  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.followRedirects = false;
    return _inner.send(request);
  }

  @override
  void close() {
    _inner.close();
  }
}

/// Main class for handling PKCE authentication.
class PKCEAuth {
  PKCEAuth(this.config, {http.Client? httpClient})
      : _client = NoRedirectHttpClient(httpClient);

  final PKCEConfig config;
  final NoRedirectHttpClient _client;
  String? _codeVerifier;
  String? _codeChallenge;
  String? _authorizationCode;

  void _generatePKCE() {
    final Random random = Random.secure();
    _codeVerifier = base64Url
        .encode(List<int>.generate(32, (_) => random.nextInt(256)))
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');

    final List<int> bytes = utf8.encode(_codeVerifier!);
    final Digest digest = sha256.convert(bytes);
    _codeChallenge = base64Url
        .encode(digest.bytes)
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');
  }

  Future<String?> performAuthorizationRequest({
    String? webOnlyCallbackUrlScheme,
  }) async {
    _generatePKCE();

    final Map<String, String> queryParams = {
      'response_type': 'code',
      'client_id': config.clientId,
      'redirect_uri': config.redirectUrl,
      'code_challenge': _codeChallenge!,
      'code_challenge_method': 'S256',
      'scope': config.scopes.join(' '),
      ...config.additionalAuthorizationParams,
    };

    final String authorizationUrl = Uri.parse(config.authorizationEndpoint)
        .replace(queryParameters: queryParams)
        .toString();

    try {
      if (kIsWeb && webOnlyCallbackUrlScheme == null) {
        throw Exception('webOnlyCallbackUrlScheme is required for web');
      }
      final result = await FlutterWebAuth2.authenticate(
        url: authorizationUrl,
        callbackUrlScheme: kIsWeb
            ? webOnlyCallbackUrlScheme!
            : Uri.parse(config.redirectUrl).scheme,
      );

      final code = Uri.parse(result).queryParameters['code'];
      if (code != null) {
        _authorizationCode = code;
        return code;
      }
    } catch (e) {
      debugPrint('Error during authorization: $e');
      rethrow;
    }

    return null;
  }

  Future<Map<String, dynamic>?> exchangeCodeForToken() async {
    if (_authorizationCode == null || _codeVerifier == null) {
      debugPrint('Authorization code or code verifier is missing');
      return null;
    }

    final response = await http.post(
      Uri.parse(config.tokenEndpoint),
      body: {
        'grant_type': 'authorization_code',
        'client_id': config.clientId,
        'code_verifier': _codeVerifier,
        'code': _authorizationCode,
        'redirect_uri': config.redirectUrl,
        ...config.additionalTokenParams,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      debugPrint('Token exchange failed: ${response.body}');
      return null;
    }
  }

  Future<http.Response> makeAuthenticatedRequest(
    String url,
    String accessToken, {
    Map<String, String>? additionalParams,
    Map<String, String> headers = const {'Accept': 'text/html'},
  }) async {
    final Uri uri = Uri.parse(url).replace(
      queryParameters: {
        'access_token': accessToken,
        ...?additionalParams,
      },
    );

    try {
      return await _client.get(uri, headers: headers);
    } catch (e) {
      debugPrint('Error in makeAuthenticatedRequest: $e');
      rethrow;
    }
  }

  void dispose() {
    _client.close();
  }
}
