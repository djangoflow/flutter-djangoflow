abstract class OAuthProvider {
  String get clientId;
  String get authorizationEndpoint;
  String get tokenEndpoint;
  String get redirectUrl;
  List<String> get scopes;
}
