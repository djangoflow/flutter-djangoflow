import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:http/http.dart' as http;
import 'package:djangoflow_odoo_auth/src/repositories/odoo_client_manager.dart';

import 'package:djangoflow_odoo_auth/src/utils/extended_odoo_client.dart';

class DjangoflowOdooAuthRepository {
  DjangoflowOdooAuthRepository(this._clientManager);
  final OdooClientManager _clientManager;

  void initializeClient(String baseUrl, {OdooSession? session}) {
    _clientManager.initializeClient(baseUrl, session: session);
  }

  Future<bool> validateSession() async {
    final odooClient = _clientManager.getClient();
    if (odooClient == null) {
      return false;
    }
    try {
      await odooClient.checkSession();
      return true;
    } catch (e) {
      if (e is OdooSessionExpiredException) {
        return false;
      }
      return true;
    }
  }

  Future<OdooSession?> login(
    String database,
    String username,
    String password,
  ) async {
    final odooClient = _clientManager.getClient();
    if (odooClient == null) {
      throw Exception(
        'OdooClient not initialized. Call initializeClient() first.',
      );
    }

    final session = await odooClient.authenticate(database, username, password);
    return session;
  }

  Future<void> logout() async {
    final odooClient = _clientManager.getClient();
    if (odooClient == null) {
      return;
    }

    await odooClient.destroySession();
  }

  Stream<OdooSession> get sessionStream =>
      _clientManager.getClient()?.sessionStream ?? const Stream.empty();

  Future<List<String>> getDatabases() async {
    final odooClient = _clientManager.getClient();
    if (odooClient == null) {
      throw Exception(
        'OdooClient not initialized. Call initializeClient() first.',
      );
    }
    if (odooClient is ExtendedOdooClient) {
      try {
        return await odooClient.getDatabaseList();
      } catch (e) {
        throw Exception('Failed to get database list: $e');
      }
    } else {
      throw Exception('OdooClient is not an instance of ExtendedOdooClient');
    }
  }

  Future<OdooSession> loginWithSessionId(
    String baseUrl,
    String sessionId,
  ) async {
    final tempClient = http.Client();
    try {
      final response = await tempClient.post(
        Uri.parse('$baseUrl/web/session/get_session_info'),
        headers: {
          'Content-Type': 'application/json',
          'Cookie': 'session_id=$sessionId',
        },
        body: json.encode({
          'jsonrpc': '2.0',
          'method': 'call',
          'params': {},
          'id': sha1.convert(utf8.encode(DateTime.now().toString())).toString(),
        }),
      );

      var result = json.decode(response.body);
      if (result['error'] != null) {
        if (result['error']['code'] == 100) {
          // session expired

          final err = result['error'].toString();
          throw OdooSessionExpiredException(err);
        } else {
          // Other error
          final err = result['error'].toString();
          throw OdooException(err);
        }
      }
      // Odoo 11 sets uid to False on failed login without any error message
      if (result['result'].containsKey('uid')) {
        if (result['result']['uid'] is bool) {
          throw OdooException('Authentication failed');
        }
      }

      final session =
          OdooSession.fromSessionInfo({...result['result'], 'id': sessionId});
      return session;
    } finally {
      tempClient.close();
    }
  }
}
