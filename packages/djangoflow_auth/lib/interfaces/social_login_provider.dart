/// The interface for the social login providers
/// The [R] is the type of the response

abstract class SocialLoginProvider<R> {
  /// The name of the provider
  String get providerName;

  /// The signIn method
  Future<R?> login();

  /// The signOut method
  Future<void> logout();
}
