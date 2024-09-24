import 'package:odoo_rpc/odoo_rpc.dart';

abstract class OdooClientManager {
  OdooClient? getClient();
  Future<void> initializeClient(String baseUrl, {OdooSession? session});
}
