// lib/utils/extended_odoo_client.dart

import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:xml_rpc/client_c.dart' as xml_rpc;

class ExtendedOdooClient extends OdooClient {
  ExtendedOdooClient(
    super.serverUrl, {
    super.sessionId,
    super.httpClient,
    super.isWebPlatform,
  });

  Future<List<String>> getDatabaseList() async {
    final serverUrl = baseURL;

    Uri uri = Uri.parse('$serverUrl/xmlrpc/db');

    try {
      final response = await xml_rpc.call(
        uri,
        'list',
        [],
      );
      if (response != null) {
        return response.cast<String>();
      } else {
        throw Exception('No response from server');
      }
    } catch (e) {
      rethrow;
    }
  }
}
