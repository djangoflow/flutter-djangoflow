import 'dart:async';
import 'package:odoo_rpc/odoo_rpc.dart';

import 'package:djangoflow_odoo_auth/src/repositories/odoo_client_manager.dart';

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
      String database, String username, String password) async {
    final odooClient = _clientManager.getClient();
    if (odooClient == null) {
      throw Exception(
          'OdooClient not initialized. Call initializeClient() first.');
    }
    try {
      final session =
          await odooClient.authenticate(database, username, password);
      return session;
    } catch (e) {
      throw Exception('Login failed: $e');
    }
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

    try {
      // Calling the 'db.list' method on Odoo to fetch the available databases
      final result = await odooClient.callKw({
        'model': 'db',
        'method': 'list',
        'args': [],
        'kwargs': {},
      });

      // Convert the result to a List<String>
      return List<String>.from(result as List);
    } catch (e) {
      throw Exception('Failed to fetch databases: $e');
    }
  }
}
