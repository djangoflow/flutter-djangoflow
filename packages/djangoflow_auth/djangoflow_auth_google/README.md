<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Auth Google Package Logo" width="200">
  <h1>🔑 DjangoFlow Auth Google Package 🔑</h1>
</div>

<div align="center">
 <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_auth_google">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_auth_google.svg">
  </a>
</div>

<div align="center">
  <p><b>djangoflow_auth_google</b> is the Google authentication provider for <a href="https://github.com/djangoflow/django-df-auth">django-df-auth</a>. It allows seamless integration of Google login functionalities with your Flutter app. Securely manage user authentication using Google Sign-In. Simple and effective! 🔒</p>
</div>

<div align="left">
  <h2>🚀 Features 🚀</h2>
  <ul align="left">
    <li>Integrate Google Sign-In with <a href="https://github.com/djangoflow/django-df-auth">django-df-auth</a>.</li>
    <li>Easy-to-use API for Google authentication in your Flutter app.</li>
    <li>Logout function to securely disconnect Google Sign-In.</li>
  </ul>
</div>

<div align="left">
  <h2>📦 Installation 📦</h2>
</div>
Add the `djangoflow_auth_google` package to your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_auth: <latest_version>
  djangoflow_auth_google: <latest_version>
  google_sign_in: <latest_version> # Add the appropriate version of google_sign_in
```

Run `flutter pub get` to fetch the package.

**Note:** Follow [google_sign_in](https://pub.dev/packages/google_sign_in) package for platform related configuration.

<h2>🔧 Usage 🔧</h2>
To perform Google authentication using `djangoflow_auth_google`, you can use the `GoogleSocialLogin` class:

```dart
import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_auth_google/djangoflow_auth_google.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  final googleSignIn = GoogleSignIn(scopes: ['email']); // Set up Google Sign-In scopes
  final googleSocialLogin = GoogleSocialLogin(googleSignIn: googleSignIn);

  // Perform Google Sign-In
  final googleAccount = await googleSocialLogin.login();

  // Handle the Google account or perform further actions
  if (googleAccount != null) {
    // Successfully signed in with Google
    // Handle user account or continue with your app
  } else {
    // Google Sign-In failed
    // Handle the error
  }

  // To disconnect Google Sign-In
  await googleSocialLogin.logout();
}

```

Read more here for detailed example on how to use it with `djangoflow_auth` this: https://pub.dev/packages/djangoflow_auth#setting-up-authcubit

<h2>🌐 Google Sign-In Button Variants 🌐</h2>
`djangoflow_auth_google` package provides different button implementations based on the platform out of the box:

- **Web**: **GoogleSignInWebButton** - Handles Google Sign-In for web platforms automatically following GSI API.(Uses `GoogleSignInButton` under the hood)
- **Mobile (iOS/Android)**: **GoogleSignInButton** - A customizable Flutter button for Google Sign-In on mobile platforms.

<h2>🛠️ Configuration and Customization 🛠️</h2>
To customize the appearance of the Google Sign-In button on **Web**, you can use the provided `GSIButtonConfigWrapper` class:

```dart
import 'package:djangoflow_auth_google/djangoflow_auth_google.dart';

final config = GSIButtonConfigWrapper(
  type: GSIWrapperButtonType.standard,
  theme: GSIWrapperButtonTheme.filledBlue,
  size: GSIWrapperButtonSize.large,
  text: GSIWrapperButtonText.signinWith,
);

// Pass the configuration to the Google Sign-In button
final googleSignInButton = GoogleSignInButton(
  configurationWrapper: config,
  onPressed: () {
    // Handle the button press
  },
);
```

You can customize the button type, theme, size, text, shape, logo alignment, locale, and minimum width.

<h2>🌐 Google Sign-In Button on Web 🌐</h2>
For web platforms, you can use the `GoogleSignInWebButton` widget, which detects the current user's authorization status and conditionally shows the Google Sign-In button or a placeholder. The `enableSilentLogin` parameter can be used to enable silent login on the web.

```dart
import 'package:djangoflow_auth_google/djangoflow_auth_google.dart';
// with BlocProvider it can be like this
final googleSignIn = (context
    .read<AuthCubit>()
    .socialLogins
    .getSocialLoginByProvider(
      ProviderEnum.googleOauth2,
    ) as GoogleSocialLogin)
.googleSignIn

GoogleSignInWebButton(
  googleSignIn: googleSignIn,
  enableSilentLogin: true,
  onSignIn: (GoogleSignInAccount? googleSignInAccount) {
    // Handle the successful Google Sign-In
  },
)
```

<h2>🌟 Example 🌟</h2>
Full example is coming soon...

<h2>👏 Contributions and Issues 👏</h2>
Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the <a href="https://github.com/djangoflow/flutter-djangoflow">GitHub_repository</a>
