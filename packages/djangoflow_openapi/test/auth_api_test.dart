import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for AuthApi
void main() {
  final instance = DjangoflowOpenapi().getAuthApi();

  group(AuthApi, () {
    //Future<OTPObtain> authOtpCreate({ OTPObtainRequest oTPObtainRequest }) async
    test('test authOtpCreate', () async {
      // TODO
    });

    //Future authOtpDevicesConfirmCreate(String id, String type, OTPDeviceConfirmRequest oTPDeviceConfirmRequest) async
    test('test authOtpDevicesConfirmCreate', () async {
      // TODO
    });

    //Future<OTPDevice> authOtpDevicesCreate(OTPDeviceRequest oTPDeviceRequest) async
    test('test authOtpDevicesCreate', () async {
      // TODO
    });

    //Future authOtpDevicesDestroy(String id, String type) async
    test('test authOtpDevicesDestroy', () async {
      // TODO
    });

    //Future<PaginatedOTPDeviceList> authOtpDevicesList({ int limit, int offset }) async
    test('test authOtpDevicesList', () async {
      // TODO
    });

    //Future<OTPDevice> authOtpDevicesRetrieve(String id, String type) async
    test('test authOtpDevicesRetrieve', () async {
      // TODO
    });

    //Future<Token> authSocialConnectCreate(SocialTokenObtainRequest socialTokenObtainRequest) async
    test('test authSocialConnectCreate', () async {
      // TODO
    });

    //Future<Token> authSocialCreate(SocialTokenObtainRequest socialTokenObtainRequest) async
    test('test authSocialCreate', () async {
      // TODO
    });

    //Future<Token> authTokenBlacklistCreate(TokenBlacklistRequest tokenBlacklistRequest) async
    test('test authTokenBlacklistCreate', () async {
      // TODO
    });

    //Future<Token> authTokenCreate({ TokenObtainRequest tokenObtainRequest }) async
    test('test authTokenCreate', () async {
      // TODO
    });

    //Future<Token> authTokenRefreshCreate(TokenRefreshRequest tokenRefreshRequest) async
    test('test authTokenRefreshCreate', () async {
      // TODO
    });

    //Future<Token> authTokenVerifyCreate(TokenVerifyRequest tokenVerifyRequest) async
    test('test authTokenVerifyCreate', () async {
      // TODO
    });

    //Future<UserIdentity> authUsersCreate({ UserIdentityRequest userIdentityRequest }) async
    test('test authUsersCreate', () async {
      // TODO
    });

    //Future<UserIdentity> authUsersPartialUpdate(String id, { PatchedUserIdentityRequest patchedUserIdentityRequest }) async
    test('test authUsersPartialUpdate', () async {
      // TODO
    });

    //Future<UserIdentity> authUsersRetrieve(String id) async
    test('test authUsersRetrieve', () async {
      // TODO
    });

    //Future authUsersSetPasswordCreate(String id, ChangePasswordRequest changePasswordRequest) async
    test('test authUsersSetPasswordCreate', () async {
      // TODO
    });

    //Future<User2FA> authUsersTwoFaPartialUpdate(String id, { PatchedUser2FARequest patchedUser2FARequest }) async
    test('test authUsersTwoFaPartialUpdate', () async {
      // TODO
    });

    //Future<User2FA> authUsersTwoFaRetrieve(String id) async
    test('test authUsersTwoFaRetrieve', () async {
      // TODO
    });

  });
}
