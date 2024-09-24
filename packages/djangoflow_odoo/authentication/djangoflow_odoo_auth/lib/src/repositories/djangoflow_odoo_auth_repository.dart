import 'dart:async';
import 'package:odoo_rpc/odoo_rpc.dart';

import 'odoo_client_manager.dart';

class DjangoflowOdooAuthRepository {
  final OdooClientManager _clientManager;

  DjangoflowOdooAuthRepository(this._clientManager);

  Future<void> initializeClient(String baseUrl, {OdooSession? session}) async {
    await _clientManager.initializeClient(baseUrl, session: session);
  }

  Future<bool> validateSession() async {
    final odooClient = _clientManager.getClient();
    if (odooClient == null) return false;
    try {
      await odooClient.checkSession();
      return true;
    } catch (e) {
      return false;
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
    if (odooClient == null) return;

    await odooClient.destroySession();
  }

  Stream<OdooSession> get sessionStream =>
      _clientManager.getClient()?.sessionStream ?? const Stream.empty();

  // You might want to implement a method to fetch databases
  // Future<List<String>> getDatabases() async {
  //   if (_odooClient == null) {
  //     throw Exception('OdooClient not initialized. Call initializeClient() first.');
  //   }
  //   // Implement the logic to fetch databases
  // }
}
