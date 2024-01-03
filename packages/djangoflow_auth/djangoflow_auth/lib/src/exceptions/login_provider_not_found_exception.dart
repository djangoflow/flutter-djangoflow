class LoginProviderNotFoundException implements Exception {

  LoginProviderNotFoundException(this.message);
  final String message;

  @override
  String toString() => message;
}
