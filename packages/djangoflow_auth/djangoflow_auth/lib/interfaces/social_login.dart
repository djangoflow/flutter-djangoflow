import 'package:djangoflow_auth/models/social_login_type/social_login_type.dart';

/// The interface for the social login providers
/// The [R] is the type of the response

abstract class SocialLogin<R> {
  /// The name of the provider
  final SocialLoginType type;

  SocialLogin({required this.type});

  /// The signIn method
  Future<R?> login();

  /// The signOut method
  Future<void> logout();
}
