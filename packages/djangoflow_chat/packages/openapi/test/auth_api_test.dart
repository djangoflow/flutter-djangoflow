import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    //Future<Change> authChangeCreate({ ChangeRequest changeRequest }) async
    test('test authChangeCreate', () async {
      // TODO
    });

    //Future<Connect> authConnectCreate({ ConnectRequest connectRequest }) async
    test('test authConnectCreate', () async {
      // TODO
    });

    //Future<Invite> authInviteCreate({ InviteRequest inviteRequest }) async
    test('test authInviteCreate', () async {
      // TODO
    });

    //Future authOtpCreate({ OTPObtainRequest oTPObtainRequest }) async
    test('test authOtpCreate', () async {
      // TODO
    });

    //Future<Signup> authSignupCreate({ SignupRequest signupRequest }) async
    test('test authSignupCreate', () async {
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

    //Future<Token> authTokenRefreshCreate(TokenRefreshSlidingRequest tokenRefreshSlidingRequest) async
    test('test authTokenRefreshCreate', () async {
      // TODO
    });

    //Future<Token> authTokenVerifyCreate(TokenVerifyRequest tokenVerifyRequest) async
    test('test authTokenVerifyCreate', () async {
      // TODO
    });

    //Future<Unlink> authUnlinkCreate({ UnlinkRequest unlinkRequest }) async
    test('test authUnlinkCreate', () async {
      // TODO
    });

  });
}
