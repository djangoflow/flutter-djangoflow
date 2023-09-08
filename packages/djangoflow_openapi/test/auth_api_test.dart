import 'package:test/test.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';


/// tests for AuthApi
void main() {
  final instance = DjangoflowOpenapi().getAuthApi();

  group(AuthApi, () {
    //Future authOtpCreate() async
    test('test authOtpCreate', () async {
      // TODO
    });

    //Future authOtpDeviceConfirmCreate(String id, OTPDeviceConfirmRequest oTPDeviceConfirmRequest) async
    test('test authOtpDeviceConfirmCreate', () async {
      // TODO
    });

    //Future<OTPDevice> authOtpDeviceCreate(OTPDeviceRequest oTPDeviceRequest) async
    test('test authOtpDeviceCreate', () async {
      // TODO
    });

    //Future authOtpDeviceDestroy(String id) async
    test('test authOtpDeviceDestroy', () async {
      // TODO
    });

    //Future<PaginatedOTPDeviceList> authOtpDeviceList({ int limit, int offset }) async
    test('test authOtpDeviceList', () async {
      // TODO
    });

    //Future<OTPDevice> authOtpDeviceRetrieve(String id) async
    test('test authOtpDeviceRetrieve', () async {
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

    //Future<Token> authTokenCreate() async
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

    //Future authUserCreate() async
    test('test authUserCreate', () async {
      // TODO
    });

  });
}
