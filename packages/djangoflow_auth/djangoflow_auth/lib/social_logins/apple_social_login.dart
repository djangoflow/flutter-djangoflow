import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleSocialLogin extends SocialLogin<AuthorizationCredentialAppleID> {
  final List<AppleIDAuthorizationScopes> scopes;
  final String? nonce;
  final WebAuthenticationOptions? webAuthenticationOptions;
  final String? state;

  AppleSocialLogin(
      {this.scopes = const [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      this.state,
      this.nonce,
      this.webAuthenticationOptions});

  @override
  Future<AuthorizationCredentialAppleID?> login() async {
    final isAvailable = await SignInWithApple.isAvailable();
    if (isAvailable) {
      return SignInWithApple.getAppleIDCredential(
        scopes: scopes,
        nonce: nonce,
        state: state,
        webAuthenticationOptions: webAuthenticationOptions,
      );
    } else {
      throw Exception('Apple login is not available on this device');
    }
  }

  @override
  Future<void> logout() async {}

  @override
  ProviderEnum get provider => ProviderEnum.appleId;
}
