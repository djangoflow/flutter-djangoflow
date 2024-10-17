<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow OAuth Package Logo" width="200">
  <h1 align="center">🌟 DjangoFlow OAuth Flutter Package 🌟</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow-oauth/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_oauth">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_oauth.svg">
  </a>
</p>

<p align="center">
  <b>djangoflow_oauth</b> makes OAuth2 flows easy for Flutter apps! This package supports secure PKCE-based OAuth2 authentication with multiple providers, including Google, Facebook, and custom OAuth servers. Works seamlessly across mobile (Android/iOS) and web platforms with minimal configuration. 🚀
</p>

<h2 align="center">🚀 Features 🚀</h2>

- **PKCE Flow**: Secure OAuth2 with Proof Key for Code Exchange.
- **Web and Mobile Support**: Works on Android, iOS, and Web.
- **Multiple Providers**: Add any OAuth2 provider with minimal setup.
- **Based on Flutter Best Practices**: Easy-to-use, extendable, and DRY code.

<h2 align="center">📑 Table of Contents 📑</h2>

- [Installation](#installation)
- [Setup](#setup)
- [Usage](#usage)
  - [Initializing OAuth Provider](#initializing-oauth-provider)
  - [Authorizing Users](#authorizing-users)
  - [Exchanging Auth Code for Token](#exchanging-auth-code-for-token)
- [Example](#example)
- [License](#license)

<h2 align="center">📦 Installation 📦</h2>

Add the `djangoflow_oauth` package to your `pubspec.yaml`:

```yaml
dependencies:
  djangoflow_oauth: <latest_version>
```

Run the following command to install the package:

```bash
flutter pub get
```

<h2 align="center">🔧 Setup 🔧</h2>

To use the `djangoflow_oauth` package, create your custom OAuth provider by implementing the `OAuthProvider` interface.

```dart
import 'package:djangoflow_oauth/djangoflow_oauth.dart';

class MyOAuthProvider implements OAuthProvider {
  @override
  final String clientId = 'your-client-id';
  @override
  final String authorizationEndpoint = 'https://example.com/auth';
  @override
  final String tokenEndpoint = 'https://example.com/token';
  @override
  final String redirectUrl = 'com.example.app:/oauth2redirect';
  @override
  final List<String> scopes = ['email', 'profile'];
}
```

<h2 align="center">💡 Usage 💡</h2>

### Initializing OAuth Provider

```dart
final provider = MyOAuthProvider();
final pkceFlow = PKCEFlow(provider);
```

### Authorizing Users

Use the `authorize` method to start the OAuth2 flow.

```dart
try {
  final code = await pkceFlow.authorize();
  print('Authorization Code: $code');
} catch (e) {
  print('Authorization failed: $e');
}
```

### Exchanging Auth Code for Token

After obtaining the authorization code, exchange it for an access token.

```dart
try {
  final tokenResponse = await pkceFlow.exchangeAuthCodeForToken({});
  print('Access Token: ${tokenResponse?['access_token']}');
} catch (e) {
  print('Token exchange failed: $e');
}
```

<h2 align="center">🌟 Example 🌟</h2>

Check out the [example](https://github.com/djangoflow/djangoflow-examples) for a complete implementation.

<h2 align="center">📄 License 📄</h2>

This package is distributed under the [MIT License](LICENSE).
