import 'package:odoo_rpc/odoo_rpc.dart';

abstract class OdooClientManager {
  OdooClient? getClient();
  void initializeClient(String baseUrl, {OdooSession? session});
}
