<div align="center">
    <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Auth Google Package Logo" width="200">
    <h1 align="center">🌟 DjangoFlow Auth Discord Flutter Package 🌟</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/djangoflow_auth_discord/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_auth_discord">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_auth_discord.svg">
  </a>
</p>

<p align="center">
  <b>djangoflow_auth_discord</b> brings the power of Discord authentication to your Flutter app! Seamlessly integrate Discord login functionalities into the DjangoFlow framework. Enjoy custom OAuth2 configuration, web and mobile support, and a consistent API through the <code>DiscordSocialLoginProvider</code> class. It's time to level up your app with Discord login! 🔒🎮
</p>

<p align="center">
  <i>Empower your users with the convenience of Discord login using <b>djangoflow_auth_discord</b>, and provide a seamless authentication experience in your app.</i>
</p>

<h2 align="left">🚀 Features 🚀</h2>

- Effortless integration with the DjangoFlow framework.
- Discord login using the OAuth2 protocol using [Implicit Grant Flow](https://discord.com/developers/docs/topics/oauth2#implicit-grant).
- Customizable OAuth2 configuration for advanced scenarios.
- Full support for both web and mobile(Android & iOS) platforms.
- Consistent and easy-to-use API through the <code>DiscordSocialLoginProvider</code> class.

<h2 align="left">📦 Installation 📦</h2>

Add the `djangoflow_auth_discord` package to your <code>pubspec.yaml</code> file:

```yaml
dependencies:
  djangoflow_auth: <latest_version>
  djangoflow_auth_discord: <latest_version>
  oauth2_client: <latest_version> # Check for the latest version
```

Run <code>flutter pub get</code> to fetch the package.

**Note:** Follow [oauth2_client](https://pub.dev/packages/oauth2_client) package for platform related configuration.

**For Web Only**: For web configuration, to receive callback your `redirectUri` should point to an html file from your web application. The html file should contain this html code. For example you can put/create this html file in your flutter_project/web/auth.html

```html
<!DOCTYPE html>
<title>Authentication complete</title>
<p>
  Authentication is complete. If this does not happen automatically, please
  close the window.
  <script>
    window.opener.postMessage(
      {
        type: "callback",
        url: window.location.href,
      },
      "*"
    );
  </script>
</p>
```

<h2 align="left">🔧 Usage 🔧</h2>

To use the <code>DiscordSocialLoginProvider</code> for Discord authentication, follow these steps:

1. Import the necessary packages:

```dart
import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_auth_discord/djangoflow_auth_discord.dart';
import 'package:flutter/foundation.dart';
```

2. Initialize <code>DiscordSocialLoginProvider</code> with your OAuth2 configuration:

```dart
final discordLogin = DiscordSocialLoginProvider(
  oAuth2Configuration: OAuth2Configuration(
    clientId: 'YOUR_CLIENT_ID',
    redirectUri: 'YOUR_REDIRECT_URI',
    customUriScheme: 'YOUR_CUSTOM_SCHEME',
    state: 'OPTIONAL_STATE',
    scope: 'SCOPE_STRING',
  ),
  type: SocialLoginType.fromProvider(ProviderEnum.discord),
);
```

3. Perform the Discord login:

```dart
final token = await discordLogin.login();

// Handle the login result, e.g., extract the access token
if (token != null) {
  // Proceed with authentication or user data retrieval
} else {
  // Handle login failure
}
```

Read more here for a detailed example on how to use it with `djangoflow_auth`: https://pub.dev/packages/djangoflow_auth#setting-up-authcubit

<h2 align="left">🌟 Example 🌟</h2>

An example of using <code>djangoflow_auth_discord</code> in a Flutter app is coming soon! Stay tuned for a comprehensive usage guide.

<h2 align="left">👏 Contributions and Issues 👏</h2>

Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the [GitHub repository](https://github.com/djangoflow/djangoflow_auth_discord/).

<h2 align="left">🛠 Troubleshooting 🛠</h2>

- Due to `oauth2_client` does not support `http: ^1.0.0`, you may need to override dependency of `http` to ^1.0.0 version.
  Can be removed one https://github.com/teranetsrl/oauth2_client/pull/168 merged.
- Custom Uri Scheme: For non-web platforms, ensure that you've provided a valid customUriScheme in the OAuth2 configuration. This is required for handling the OAuth2 flow on mobile platforms. Best to use with http/https host and valid scheme that have verification of your ownership. Look here for more details:
  - https://docs.flutter.dev/cookbook/navigation/set-up-app-links#3-hosting-assetlinksjson-file
  - https://docs.flutter.dev/cookbook/navigation/set-up-universal-links#apple-app-site-association

<h2 align="left">📄 License 📄</h2>

This package is distributed under the [MIT License](/LICENSE).
