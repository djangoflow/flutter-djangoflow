# djangoflow_odoo_auth

A Flutter package for handling authentication with Odoo ERP systems.

## Features

- Easy integration with Odoo authentication
- Automatic session validation
- Support for multiple Odoo instances

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_odoo_auth: ^0.0.1
```

## Usage

```dart
import 'package:djangoflow_odoo_auth/djangoflow_odoo_auth.dart';

// Initialize the auth repository
final authRepository = DjangoflowOdooAuthRepository(OdooClientManagerImpl());

// Create the auth cubit
final authCubit = DjangoflowOdooAuthCubit(authRepository);

// Login
await authCubit.login('username', 'password');

// Check auth status
if (authCubit.state.status == AuthStatus.authenticated) {
  // User is logged in
}

// Logout
await authCubit.logout();
```
