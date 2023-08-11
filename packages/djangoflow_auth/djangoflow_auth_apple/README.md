<h1 align="center">🌟 DjangoFlow Auth Apple Flutter Package 🌟</h1>

<p align="center">
  <a href="https://github.com/djangoflow/djangoflow_auth_apple/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_auth_apple">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_auth_apple.svg">
  </a>
</p>

<p align="center">
  <b>djangoflow_auth_apple</b> lets you embrace the magic of Apple Sign-In within your Flutter app! Effortlessly integrate Apple authentication functionalities into the DjangoFlow framework. Enjoy the power of Apple Sign-In with customizable scopes, nonce, and more. It's as smooth as apple butter! 🍏🔐
</p>

<p align="center">
  <i>Unlock the potential of Apple Sign-In integration with <b>djangoflow_auth_apple</b>, and give your users the seamless experience they deserve!</i>
</p>

## Features

- Seamless integration with the DjangoFlow framework.
- Apple Sign-In using the <a href="https://pub.dev/packages/sign_in_with_apple"><code>sign_in_with_apple</code></a> package.
- Customizable scopes to access user data (default: email and full name).
- Support for nonce, web authentication options, and state.
- Convenient API provided through the <code>AppleSocialLogin</code> class.

## Installation

Add the `djangoflow_auth_apple` package to your <code>pubspec.yaml</code> file:

```yaml
dependencies:
  djangoflow_auth_apple: <latest_version>
  sign_in_with_apple: <latest_version> # Check for the latest version
```

Run <code>flutter pub get</code> to fetch the package.
**Note:** Follow [sign_in_with_apple](https://pub.dev/packages/sign_in_with_apple) package for platform related configuration.

## Usage

To use the <code>AppleSocialLogin</code> for Apple Sign-In, follow these steps:

1. Import the necessary packages:

```dart
import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_auth_apple/djangoflow_auth_apple.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
```

2. Initialize <code>AppleSocialLogin</code> and provide the desired scopes, nonce, state, and web authentication options:

```dart
final appleLogin = AppleSocialLogin(
  scopes: [
    AppleIDAuthorizationScopes.email,
    AppleIDAuthorizationScopes.fullName,
  ],
  nonce: 'your_nonce_here',
  state: 'your_state_here',
  webAuthenticationOptions: WebAuthenticationOptions(
    // Specify your web authentication options
  ),
  type: SocialLoginType.fromProvider(ProviderEnum.apple),
);
```

3. Perform the Apple Sign-In:

```dart
try {
  final result = await appleLogin.login();

  // Handle the Apple Sign-In result, e.g., extract the user data
  if (result != null) {
    final appleIDCredential = result;
    // Proceed with authentication or user data retrieval
  } else {
    // Handle login failure
  }
} catch (e) {
  // Handle exceptions, e.g., Apple login not available on this device
}
```

Read more here for a detailed example on how to use it with `djangoflow_auth`: https://pub.dev/packages/djangoflow_auth#setting-up-authcubit

## Example

An example of using <code>djangoflow_auth_apple</code> in a Flutter app is coming soon! Stay tuned for a comprehensive usage guide.

## Contributions and Issues

Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the <a href="https://github.com/djangoflow/djangoflow_auth_apple/">GitHub repository</a>.

## License

This package is distributed under the <a href="/LICENSE">MIT License</a>.
