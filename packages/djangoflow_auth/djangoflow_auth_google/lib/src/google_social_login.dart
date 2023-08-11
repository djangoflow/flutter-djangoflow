import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSocialLogin extends SocialLogin<GoogleSignInAccount> {
  final GoogleSignIn googleSignIn;

  GoogleSocialLogin({required this.googleSignIn, required super.type});
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
}
