import 'package:djangoflow_openapi/djangoflow_openapi.dart';

/// The interface for the social login providers
/// The [R] is the type of the response

abstract class SocialLogin<R> {
  /// The name of the provider
  ProviderEnum get provider;

  /// The signIn method
  Future<R?> login();

  /// The signOut method
  Future<void> logout();
}
