# DjangoFlow Auth Flutter Package

[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue.svg)](https://github.com/djangoflow/flutter-djangoflow/)
[![Pub](https://img.shields.io/pub/v/djangoflow_auth.svg)](https://pub.dev/packages/djangoflow_auth)

`djangoflow_auth` is a Flutter package that provides authentication functionalities compatible with [django-df-auth](https://github.com/djangoflow/django-df-auth). It integrates with various authentication providers, supports otp login/signup, making it easier to handle user authentication in your Flutter app.

_NOTE_: This package depends on [https://pub.dev/packages/djangoflow_openapi](djangoflow_openapi) for models and API methods. Please ensure that you are using djangoflow framework for development. To support django backend with djangoflow authentication system please follow [django-df-auth](https://github.com/djangoflow/django-df-auth#readme). More information with a locally generated `djangoflow_openapi` and a running backend server complete example is coming soon.

Stay tuned for a comprehensive example that demonstrates how to implement authentication using the `djangoflow_auth` package alongside a locally generated `djangoflow_openapi` and a running backend server.

We'll provide step-by-step instructions, code snippets, and explanations to guide you through the process of integrating Djangoflow Framework-based login into your Flutter app using the `djangoflow_auth` package.

Keep an eye out for updates and the upcoming example!

## Features

- Seamless integration with [django-df-auth](https://github.com/djangoflow/django-df-auth).
- Support for multiple authentication providers, including Facebook, Google, Apple Sign-In, Discord, and more.
- Built on top of popular and well-maintained Flutter packages like `bloc`, `dio`, and `hydrated_bloc` etc.
- Supprts OTP, magic link, google, facebook, apple, discord for Flutter web and mobile platforms out of the box

## Table of Contents

- [Installation](#installation)
- [Social Login Configuration](#social-login-configuration)
- [Usage](#usage)
  - [Setting Up AuthCubit](#setting-up-authcubit)
  - [Performing OTP Login](#performing-otp-login)
  - [Performing Magic Link Login](#performing-magic-link-login)
  - [Performing Social Logins](#performing-social-logins)
  - [Handling Social Login Results](#handling-social-login-results)
- [Example](#example)
- [Contributions and Issues](#contributions-and-issues)
- [License](#license)

## Installation

Add the `djangoflow_auth` package to your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_auth: ^0.0.1

dependency_overrides:
  djangoflow_openapi:
    path: PATH_TO_YOUR_GENERATED_OPENAPI
```

Run `flutter pub get` to fetch the package.

## Social Login Configuration

To enable social logins in your Flutter app using the `djangoflow_auth` package, you'll need to configure the necessary providers. This package supports the following social login providers:

- [google_sign_in](https://pub.dev/packages/google_sign_in) for Google login
- [flutter_facebook_auth](https://pub.dev/packages/flutter_facebook_auth) for Facebook login
- [sign_in_with_apple](https://pub.dev/packages/sign_in_with_apple) for Apple login
- [oauth2_client](https://pub.dev/packages/oauth2_client) for Discord login

Please follow their READMEs to configure platform specific configurations.

## Usage

### Setting up AuthCubit

    - Import the necessary packages, for example using BlocProvider:
    ```dart
    import 'package:flutter_bloc/flutter_bloc.dart';
    import 'package:djangoflow_auth/djangoflow_auth.dart';
    import 'package:google_sign_in/google_sign_in.dart';
    ```
    - Initialize `AuthCubit` and provide social login providers via `BlocProvider`
    ```dart
    void main() {
        runApp(
            BlocProvider<AuthCubit>(
            create: (context) => AuthCubit.instance
                ..authApi = {Your AuthApi, comes from djangoflow_openapi}
                ..socialLogins = [
                GoogleSocialLogin(
                    googleSignIn: GoogleSignIn(
                        scopes: ['email'],
                    ),
                ),
                // Add other social login providers
                ],
            child: MyApp(),
            ),
        );
    }
    ```

### Performing OTP Login

Inside your app, use the `AuthCubit` to perform OTP login:

```dart
final authCubit = context.read<AuthCubit>();

try {
  // Step 1: Request OTP for the user's email
  await authCubit.requestOTP(email: userEmail);

  // Step 2: Present the OTP input UI to the user and retrieve the OTP value

  // Step 3: Initiate OTP login
  await authCubit.loginWithEmailOTP(email: userEmail, otp: enteredOTP);

  // Step 4: Handle successful login and proceed with app navigation
} catch (error) {
  // Handle errors, e.g., display an error message to the user
}
```

### Performing magic link login

Inside your app, use the AuthCubit to perform login with a Magic Link:

```dart
final authCubit = context.read<AuthCubit>();

try {
  // Step 1: Retrieve the magic link from your user's source (e.g., email + otp) in base64
  final magicLink = "your_encoded_magic_link_here"; // Replace with the actual magic link

  // Step 2: Initiate login with the user's email and OTP
  await authCubit.loginWithMagicLink(magicLink: magicLink);

  // Step 3: Handle successful login and proceed with app navigation
} catch (error) {
  // Handle errors, e.g., display an error message to the user
}

```

### Performing Social Authentications

Let's say we are going to login via google, inside your app, initiate social login using `AuthCubit` methods

```dart
final authCubit = context.read<AuthCubit>();
final providerEnum = ProviderEnum.googleOauth2;
// To authenticate using google
final result = await authCubit.authenticateWithSocialProvider<GoogleSignInAccount>(providerEnum);
```

### Handling Social Login Results

Based on the login result, retrieve the access token and use it to log in with the social provider:

```dart
if (result == null) {
    throw Exception('Google Sign In failed');
} else {
    final googleSignInAuthentication =
    await result.authentication;
    final accessToken =
    googleSignInAuthentication.accessToken;

    if (accessToken == null) {
        throw Exception(
            'Google Sign In failed - no token');
    }
    await authCubit.loginWithSocialProvider(
        socialTokenObtainRequest:
            SocialTokenObtainRequest(
        provider: providerEnum,
        accessToken: accessToken,
        ),
    );
}
```

## Example

Coming soon...

## Contributions and Issues

Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the [GitHub repository](https://github.com/djangoflow/flutter-djangoflow/).

## License

This package is distributed under the [MIT License](/LICENSE).
