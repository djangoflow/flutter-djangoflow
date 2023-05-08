import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AccountsApi
void main() {
  final instance = Openapi().getAccountsApi();

  group(AccountsApi, () {
    //Future<User> accountsUsersPartialUpdate(String id, { PatchedUserRequest patchedUserRequest }) async
    test('test accountsUsersPartialUpdate', () async {
      // TODO
    });

    //Future<User> accountsUsersRetrieve(String id) async
    test('test accountsUsersRetrieve', () async {
      // TODO
    });

    //Future<User> accountsUsersUpdate(String id, { UserRequest userRequest }) async
    test('test accountsUsersUpdate', () async {
      // TODO
    });

  });
}
