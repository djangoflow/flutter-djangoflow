import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for V1Api
void main() {
  final instance = DjangoflowOpenapi().getV1Api();

  group(V1Api, () {
    //Future<OTPObtain> v1AuthOtpCreate({ OTPObtainRequest oTPObtainRequest }) async
    test('test v1AuthOtpCreate', () async {
      // TODO
    });

    //Future v1AuthOtpDevicesConfirmCreate(String id, String type, OTPDeviceConfirmRequest oTPDeviceConfirmRequest) async
    test('test v1AuthOtpDevicesConfirmCreate', () async {
      // TODO
    });

    //Future<OTPDevice> v1AuthOtpDevicesCreate(OTPDeviceRequest oTPDeviceRequest) async
    test('test v1AuthOtpDevicesCreate', () async {
      // TODO
    });

    //Future v1AuthOtpDevicesDestroy(String id, String type) async
    test('test v1AuthOtpDevicesDestroy', () async {
      // TODO
    });

    //Future<PaginatedOTPDeviceList> v1AuthOtpDevicesList({ int limit, int offset }) async
    test('test v1AuthOtpDevicesList', () async {
      // TODO
    });

    //Future<OTPDevice> v1AuthOtpDevicesRetrieve(String id, String type) async
    test('test v1AuthOtpDevicesRetrieve', () async {
      // TODO
    });

    //Future<Token> v1AuthSocialConnectCreate(SocialTokenObtainRequest socialTokenObtainRequest) async
    test('test v1AuthSocialConnectCreate', () async {
      // TODO
    });

    //Future<Token> v1AuthSocialCreate(SocialTokenObtainRequest socialTokenObtainRequest) async
    test('test v1AuthSocialCreate', () async {
      // TODO
    });

    //Future<Token> v1AuthTokenBlacklistCreate(TokenBlacklistRequest tokenBlacklistRequest) async
    test('test v1AuthTokenBlacklistCreate', () async {
      // TODO
    });

    //Future<Token> v1AuthTokenCreate({ TokenObtainRequest tokenObtainRequest }) async
    test('test v1AuthTokenCreate', () async {
      // TODO
    });

    //Future<Token> v1AuthTokenRefreshCreate(TokenRefreshRequest tokenRefreshRequest) async
    test('test v1AuthTokenRefreshCreate', () async {
      // TODO
    });

    //Future<Token> v1AuthTokenVerifyCreate(TokenVerifyRequest tokenVerifyRequest) async
    test('test v1AuthTokenVerifyCreate', () async {
      // TODO
    });

    //Future<UserIdentity> v1AuthUsersCreate({ UserIdentityRequest userIdentityRequest }) async
    test('test v1AuthUsersCreate', () async {
      // TODO
    });

    //Future<UserIdentity> v1AuthUsersPartialUpdate(String id, { PatchedUserIdentityRequest patchedUserIdentityRequest }) async
    test('test v1AuthUsersPartialUpdate', () async {
      // TODO
    });

    //Future<UserIdentity> v1AuthUsersRetrieve(String id) async
    test('test v1AuthUsersRetrieve', () async {
      // TODO
    });

    //Future v1AuthUsersSetPasswordCreate(String id, ChangePasswordRequest changePasswordRequest) async
    test('test v1AuthUsersSetPasswordCreate', () async {
      // TODO
    });

    //Future<User2FA> v1AuthUsersTwoFaPartialUpdate(String id, { PatchedUser2FARequest patchedUser2FARequest }) async
    test('test v1AuthUsersTwoFaPartialUpdate', () async {
      // TODO
    });

    //Future<User2FA> v1AuthUsersTwoFaRetrieve(String id) async
    test('test v1AuthUsersTwoFaRetrieve', () async {
      // TODO
    });

    //Future<List<PushActionCategory>> v1NotificationsActionCategoriesList() async
    test('test v1NotificationsActionCategoriesList', () async {
      // TODO
    });

    //Future<UserDevice> v1NotificationsDevicesCreate(UserDeviceRequest userDeviceRequest) async
    test('test v1NotificationsDevicesCreate', () async {
      // TODO
    });

    //Future v1NotificationsDevicesDestroy(String registrationId) async
    test('test v1NotificationsDevicesDestroy', () async {
      // TODO
    });

    //Future<PaginatedUserDeviceList> v1NotificationsDevicesList({ int limit, int offset }) async
    test('test v1NotificationsDevicesList', () async {
      // TODO
    });

    //Future<UserDevice> v1NotificationsDevicesPartialUpdate(String registrationId, { PatchedUserDeviceRequest patchedUserDeviceRequest }) async
    test('test v1NotificationsDevicesPartialUpdate', () async {
      // TODO
    });

    //Future<UserDevice> v1NotificationsDevicesRetrieve(String registrationId) async
    test('test v1NotificationsDevicesRetrieve', () async {
      // TODO
    });

    //Future<UserDevice> v1NotificationsDevicesUpdate(String registrationId, UserDeviceRequest userDeviceRequest) async
    test('test v1NotificationsDevicesUpdate', () async {
      // TODO
    });

    //Future<RemoteConfig> v1RemoteconfigRetrieve(String part_, { Map<String, Object> params }) async
    test('test v1RemoteconfigRetrieve', () async {
      // TODO
    });

  });
}
