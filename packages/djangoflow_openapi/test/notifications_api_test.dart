import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for NotificationsApi
void main() {
  final instance = DjangoflowOpenapi().getNotificationsApi();

  group(NotificationsApi, () {
    //Future<List<PushActionCategory>> notificationsActionCategoriesList() async
    test('test notificationsActionCategoriesList', () async {
      // TODO
    });

    //Future<UserDevice> notificationsDevicesCreate(UserDeviceRequest userDeviceRequest) async
    test('test notificationsDevicesCreate', () async {
      // TODO
    });

    //Future notificationsDevicesDestroy(String registrationId) async
    test('test notificationsDevicesDestroy', () async {
      // TODO
    });

    //Future<List<UserDevice>> notificationsDevicesList() async
    test('test notificationsDevicesList', () async {
      // TODO
    });

    //Future<UserDevice> notificationsDevicesPartialUpdate(String registrationId, { PatchedUserDeviceRequest patchedUserDeviceRequest }) async
    test('test notificationsDevicesPartialUpdate', () async {
      // TODO
    });

    //Future<UserDevice> notificationsDevicesRetrieve(String registrationId) async
    test('test notificationsDevicesRetrieve', () async {
      // TODO
    });

    //Future<UserDevice> notificationsDevicesUpdate(String registrationId, UserDeviceRequest userDeviceRequest) async
    test('test notificationsDevicesUpdate', () async {
      // TODO
    });

  });
}
