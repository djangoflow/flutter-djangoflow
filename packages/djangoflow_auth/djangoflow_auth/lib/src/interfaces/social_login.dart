import 'package:djangoflow_auth/src/models/social_login_type/social_login_type.dart';

/// The interface for the social login providers
/// The [R] is the type of the response

abstract class SocialLogin<R> {
  /// The type of SocialLogin
  final SocialLoginType type;

  SocialLogin({required this.type});

  /// The login method
  Future<R?> login();

  /// The logout method
  Future<void> logout();
}
