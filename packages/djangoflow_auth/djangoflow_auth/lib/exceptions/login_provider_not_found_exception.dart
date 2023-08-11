class LoginProviderNotFoundException implements Exception {
  final String message;

  LoginProviderNotFoundException(this.message);

  @override
  String toString() => message;
}
