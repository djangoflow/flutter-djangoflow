<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Auth Google Package Logo" width="200">
  <h1 align="center">🌟 DjangoFlow Auth Flutter Package 🌟</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_auth">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_auth.svg">
  </a>
</p>

<p align="center">
  <b>djangoflow_auth</b> is your ultimate Flutter authentication companion! Seamlessly integrate authentication functionalities compatible with <a href="https://github.com/djangoflow/django-df-auth">django-df-auth</a>. Supports multiple providers, OTP login/signup, and more, making user authentication a breeze for your Flutter app. Yes, it's ready out of the box! 🔒
</p>

<p align="center">
  <b>NOTE:</b> This package relies on <a href="https://pub.dev/packages/djangoflow_openapi">djangoflow_openapi</a> for models and API methods. Make sure you're using the DjangoFlow framework for development. For Django backend with DjangoFlow authentication, follow the <a href="https://github.com/djangoflow/django-df-auth#readme">django-df-auth</a> README. Checkout our [Example](https://github.com/djangoflow/djangoflow-examples/tree/main/simple_auth)! 🚀
</p>

<p align="center">
  <i>Stay tuned for a comprehensive example that demonstrates how to implement authentication using the <b>djangoflow_auth</b> package alongside a locally generated <b>djangoflow_openapi</b> and a running backend server.</i>
</p>

<p align="center">
  <i>We'll provide step-by-step instructions, code snippets, and explanations to guide you through the process of integrating Djangoflow Framework-based login into your Flutter app using the <b>djangoflow_auth</b> package. Keep an eye out for updates and the upcoming example!</i>
</p>

<h2 align="center">🚀 Features 🚀</h2>

- Seamless integration with <a href="https://github.com/djangoflow/django-df-auth">django-df-auth</a>.
- Support for multiple authentication providers, including Google, Facebook, Apple Sign-In, Discord, and more.
- Built on top of popular and well-maintained Flutter packages like <code>bloc</code>, <code>dio</code>, and <code>hydrated_bloc</code>, etc.
- Supports OTP, magic link, Google, Facebook, Apple, Discord for Flutter web and mobile platforms out of the box.
- Supports OAuth2 web support with <code>WebWindow</code> popup.

<h2 align="center">📑 Table of Contents 📑</h2>

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

<h2 align="center">📦 Installation 📦</h2>

Add the `djangoflow_auth` package to your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_auth: <lastest_version>

dependency_overrides:
  djangoflow_openapi:
    path: PATH_TO_YOUR_GENERATED_OPENAPI
  oauth2_client:
    git:
      url: https://github.com/jheld/oauth2_client.git
      ref: master
```

Run `flutter pub get` to fetch the package.

<h2 align="center">🔧 Social Login Configuration 🔧</h2>
This package has built-in support for the following social logins:

- Google: djangoflow_auth_google
- Facebook: djangoflow_auth_facebook
- Apple: djangoflow_auth_apple
- Discord: djangoflow_auth_discord
- Twitter: Coming soon...

If you want to create your custom `SocialLogin`, you can extend the `SocialLogin` class. Here's an example from the `djangoflow_auth_google` package's implementation:

```dart
class GoogleSocialLogin extends SocialLogin<GoogleSignInAccount> {
  final GoogleSignIn googleSignIn;

  GoogleSocialLogin({required this.googleSignIn})
      : super(type: SocialLoginType.fromProvider(ProviderEnum.googleOauth2));

  @override
  Future<GoogleSignInAccount?> login() async {
    final result = await googleSignIn.signIn();
    return result;
  }

  @override
  Future<void> logout() async {
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.disconnect();
    }
  }
}
```

<h2 align="center">💡 Usage 💡</h2>

### Setting up AuthCubit

    - Import the necessary packages, for example using BlocProvider:
    ```dart
    import 'package:flutter_bloc/flutter_bloc.dart';
    import 'package:djangoflow_auth/djangoflow_auth.dart';
    import 'package:djangoflow_auth_google/djangoflow_auth.dart_google';
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
                    type: SocialLoginType.fromProvider(
                      ProviderEnum.googleOauth2,
                    ),
                    googleSignIn: GoogleSignIn(
                      scopes: [
                        'email',
                      ],
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

- Add the `djangoflow_auth_google` package to your `pubspec.yaml` file:

  ```yaml
  dependencies:
    djangoflow_auth_google: <latest_version>
    google_sign_in: <latest_version>
  ```

  and run `flutter pub get`

- Then when you need to authenticate with Google sign in,

  ```dart
  final authCubit = context.read<AuthCubit>();
  final socialLogin =
      authCubit.socialLogins.getSocialLoginByProvider(
    ProviderEnum.googleOauth2,
  );

  // Authenticate with Google
  final result =
      await authCubit.authenticateWithSocialProvider<
          GoogleSignInAccount>(
    socialLogin.type,
  );
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
      provider: socialLogin.type.provider,
      accessToken: accessToken,
    ),
  );
}
```

<h2 align="center">🌟 Example 🌟</h2>

[Example](https://github.com/djangoflow/djangoflow-examples/tree/main/simple_auth)

<h2 align="center">👏 Contributions and Issues 👏</h2>

Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the [GitHub repository](https://github.com/djangoflow/flutter-djangoflow/).

<h2 align="center">📄 License 📄</h2>

This package is distributed under the [MIT License](/LICENSE).
