import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:djangoflow_oauth/src/oauth_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;

class PKCEFlow {
  PKCEFlow(this.provider, {http.BaseClient? httpClient}) {
    client = httpClient ?? http.Client() as http.BaseClient;
  }

  final OAuthProvider provider;
  late http.BaseClient client;

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

  Future<String?> authorize({
    FlutterWebAuth2Options? options,
    Map<String, String>? additionalParams,
    String scopeSeparator = ' ',
  }) async {
    _generatePKCE();

    final Map<String, String> queryParams = {
      'response_type': 'code',
      'client_id': provider.clientId,
      'redirect_uri': provider.redirectUrl,
      'code_challenge': _codeChallenge!,
      'code_challenge_method': 'S256',
      'scope': provider.scopes.join(scopeSeparator),
      if (additionalParams != null) ...additionalParams,
    };

    final String authorizationUrl = Uri.parse(provider.authorizationEndpoint)
        .replace(queryParameters: queryParams)
        .toString();

    try {
      final result = await FlutterWebAuth2.authenticate(
        url: authorizationUrl,
        callbackUrlScheme: Uri.parse(provider.redirectUrl).scheme,
        options: options ?? const FlutterWebAuth2Options(),
      );

      final code = Uri.parse(result).queryParameters['code'];
      if (code != null) {
        _authorizationCode = code;
        return code;
      }
    } catch (e) {
      debugPrint('Failed to authorize: $e');
      rethrow;
    }

    return null;
  }

  Future<Map<String, dynamic>?> exchangeAuthCodeForToken(
    Map<String, String>? additionalParams,
  ) async {
    if (_authorizationCode == null || _codeVerifier == null) {
      debugPrint('Authorization code or code verifier is missing');
      throw Exception('Authorization code or code verifier is missing');
    }

    final response = await http.post(
      Uri.parse(provider.tokenEndpoint),
      body: {
        'grant_type': 'authorization_code',
        'client_id': provider.clientId,
        'code_verifier': _codeVerifier,
        'code': _authorizationCode,
        'redirect_uri': provider.redirectUrl,
        if (additionalParams != null) ...additionalParams,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      debugPrint('Token exchange failed: ${response.body}');
      throw Exception('Token exchange failed');
    }
  }
}
