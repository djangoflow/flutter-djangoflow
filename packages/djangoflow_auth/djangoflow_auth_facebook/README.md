<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Auth Google Package Logo" width="200">
  <h1 align="center">🌟 DjangoFlow Auth Facebook Flutter Package 🌟</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/djangoflow_auth_facebook/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_auth_facebook">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_auth_facebook.svg">
  </a>
</p>

<p align="center">
  <b>djangoflow_auth_facebook</b> adds a touch of Facebook magic to your Flutter app! Seamlessly integrate Facebook authentication functionalities into the DjangoFlow framework. Effortlessly handle Facebook login with customizable permissions and login behavior. It's as easy as 1-2-3! 🔐📱
</p>

<p align="center">
  <i>Experience the ease of Facebook integration with <b>djangoflow_auth_facebook</b>, and let your app shine with social login power!</i>
</p>

## Features

- Smooth integration with the DjangoFlow framework.
- Facebook Login using the <a href="https://pub.dev/packages/flutter_facebook_auth"><code>flutter_facebook_auth</code></a> package.
- Customizable permissions to access user data (default: ['email', 'public_profile']).
- Flexible login behavior options (default: nativeWithFallback).
- Enjoy a clean and consistent API through the <code>FacebookSocialLogin</code> class.

## Installation

Add the `djangoflow_auth_facebook` package to your <code>pubspec.yaml</code> file:

```yaml
dependencies:
  djangoflow_auth_facebook: ^0.0.1
  flutter_facebook_auth: <latest_version> # Check for the latest version
```

Run <code>flutter pub get</code> to fetch the package.
**Note:** Follow [flutter_facebook_auth](https://pub.dev/packages/flutter_facebook_auth) package for platform related configuration.

## Usage

To use the <code>FacebookSocialLogin</code> for Facebook authentication, follow these steps:

1. Import the necessary packages:

```dart
import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_auth_facebook/djangoflow_auth_facebook.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
```

2. Initialize <code>FacebookSocialLogin</code> and provide the desired permissions and login behavior:

```dart
final facebookLogin = FacebookSocialLogin(
  permissions: ['email', 'public_profile'],
  loginBehavior: LoginBehavior.nativeWithFallback,
  type: SocialLoginType.fromProvider(SocialTokenObtainProviderEnum.facebook),
);
```

3. Perform the Facebook login:

```dart
final result = await facebookLogin.login();

// Handle the login result, e.g., extract the access token
if (result != null && result.status == LoginStatus.success) {
  final accessToken = result.accessToken;
  // Proceed with authentication or user data retrieval
} else {
  // Handle login failure
}
```

4. Logout when needed:

```dart
await facebookLogin.logout();
```

Read more here for detailed example on how to use it with `djangoflow_auth` this: https://pub.dev/packages/djangoflow_auth#setting-up-authcubit

## Example

[Example](https://github.com/djangoflow/djangoflow-examples/tree/main/simple_auth)

## Contributions and Issues

Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the <a href="https://github.com/djangoflow/djangoflow_auth_facebook/">GitHub repository</a>.

## License

This package is distributed under the <a href="/LICENSE">MIT License</a>.
