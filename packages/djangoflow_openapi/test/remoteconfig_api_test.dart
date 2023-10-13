import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for RemoteconfigApi
void main() {
  final instance = DjangoflowOpenapi().getRemoteconfigApi();

  group(RemoteconfigApi, () {
    //Future<RemoteConfig> remoteconfigRetrieve(String part_, { Map<String, Object> params }) async
    test('test remoteconfigRetrieve', () async {
      // TODO
    });

  });
}
