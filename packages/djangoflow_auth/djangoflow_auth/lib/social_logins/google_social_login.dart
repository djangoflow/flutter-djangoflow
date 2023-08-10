import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSocialLogin implements SocialLogin<GoogleSignInAccount> {
  final GoogleSignIn googleSignIn;

  GoogleSocialLogin({required this.googleSignIn});
  @override
  Future<GoogleSignInAccount?> login() async {
    final result = await googleSignIn.signIn();
    return result;
  }

  @override
  Future<void> logout() async {
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.disconnect();
    }
  }

  @override
  ProviderEnum get provider => ProviderEnum.googleOauth2;
}
