# djangoflow_odoo_oauth

A Flutter package for handling Odoo SSO (Single Sign-On) authentication in your applications.

## Features

- Easy integration with Odoo SSO authentication
- Handles SSO URL extraction
- Provides a WebView for SSO login process
- Manages session cookies
- Supports logout functionality

## Getting Started

To use this package, add `djangoflow_odoo_oauth` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  djangoflow_odoo_oauth: ^1.0.0
```

## Usage

### Authentication

To authenticate a user:

```dart
import 'package:djangoflow_odoo_oauth/djangoflow_odoo_oauth.dart';

final authenticator = OdooSSOAuthenticator();

try {
  final sessionId = await authenticator.authenticate(
    context,
    baseUrl: 'https://your-odoo-server.com',
  );

  if (sessionId != null) {
    // Authentication successful, use the sessionId as needed
  }
} catch (e) {
  // Handle authentication errors
}
```

### Logout

To log out a user:

```dart
await authenticator.logout(sessionId);
```

## Additional Information

- This package uses `webview_flutter` for handling the SSO login process.
- Make sure to handle state management and error cases in your application logic.
- The package does not store any credentials or session information. It's the responsibility of the calling application to securely manage the returned session ID.

## Contributing

Contributions are welcome! If you find a bug or want a feature, please open an issue.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
