# flutter-djangoflow ✨

Welcome to the world of Flutter modules for DjangoFlow! This repository contains a collection of modules designed to enhance your Flutter development experience when working with DjangoFlow.

## Available Modules

### [djangoflow_app](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_app) 📱

A simple, opinionated, and minimal Flutter application structure for quick start and easy maintenance.

### [djangoflow_auth](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_auth) 🔒

Complimentary modules for [django-df-auth](https://github.com/djangoflow/django-df-auth):

- **[djangoflow_auth](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_auth/djangoflow_auth)**: Your ultimate Flutter authentication companion, packed with DjangoFlow API support.
- **[djangoflow_auth_apple](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_auth/djangoflow_auth_apple)**: Embrace the magic of Apple Sign-In within your Flutter app! 🍏
- **[djangoflow_auth_discord](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_auth/djangoflow_auth_discord)**: Bring the power of Discord authentication to your Flutter app! 🎮
- **[djangoflow_auth_facebook](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_auth/djangoflow_auth_facebook)**: Add a touch of Facebook magic to your Flutter app with DjangoFlow API. 📘
- **[djangoflow_auth_google](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_auth/djangoflow_auth_google)**: The Google authentication provider for the djangoflow_auth package. 🌐

### [djangoflow_chat](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_chat) (Work in Progress) 📝

A complementary Flutter module for [django-df-chat](https://github.com/djangoflow/django-df-chat).

### [djangoflow_deep_link](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_deep_link) 🔗

Deep-link handling libraries by DjangoFlow:

- **[djangoflow_deep_link_interface](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_deep_link/djangoflow_deep_link_interface)**: Provides an interface to implement deep-link handling in Flutter applications.
- **[djangoflow_app_links](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_deep_link/djangoflow_app_links)**: Concrete implementation of `djangoflow_deep_link_interface` using the `app_links` package.

### [djangoflow_local_notification](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_local_notification) 📬

A streamlined and flexible local notification solution for Flutter mobile apps. Seamlessly integrated with DjangoFlow framework to enable dynamic notification actions.

### [djangoflow_push_notification](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_push_notification) 📢

Libraries to handle push notifications from different push notification services:

- **[djangoflow_fcm](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_push_notification/djangoflow_fcm)**: A Dart package that provides a simple solution for handling Firebase Cloud Messaging (FCM) functionality in a Flutter app.

### [djangoflow_error_reporters](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_error_reporters) 🚨

Libraries to provide an interface and concrete implementation for error reporting:

- **[djangoflow_error_reporter](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_error_reporters/djangoflow_error_reporter)**: Easy and flexible error handling library for your Flutter application.
- **[djangoflow_sentry_reporter](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_error_reporters/djangoflow_sentry_reporter)**: Report errors to `Sentry` using the `djangoflow_error_reporter` package.

### [djangoflow_analytics](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_analytics) 📊

Libraries to provide an interface and concrete implementation for sending analytics data:

- **[djangoflow_analytics](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_analytics/djangoflow_analytics)**: Track analytics with multiple analytics providers in Flutter applications.
- **[djangoflow_facebook_analytics](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_analytics/djangoflow_facebook_analytics)**: Implement Facebook Analytics in your Flutter apps.
- **[djangoflow_firebase_analytics](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_analytics/djangoflow_firebase_analytics)**: Implement Firebase Analytics in your Flutter apps.
- **[djangoflow_mixpanel_analytics](https://github.com/djangoflow/flutter-djangoflow/tree/main/packages/djangoflow_analytics/djangoflow_mixpanel_analytics)**: Implement Mixpanel Analytics in your Flutter apps.

## Contribution Guideline

1. Fork the repository and create a new branch for your changes.
2. Make your changes and commit them using the following commit message format:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

3. Push your changes to your branch and open a pull request.

## Melos Commit Patterns

[Melos](https://pub.dev/packages/melos) uses the following commit patterns to manage the versioning of your monorepo:

- `feat`: Introduces a new feature.
- `fix`: Fixes a bug.
- `docs`: Updates the documentation.
- `style`: Code style changes (no functionality changes).
- `refactor`: Refactors the code.
- `test`: Adds or updates tests.
- `chore`: Routine tasks, maintenance etc.
- `revert `: A change that reverts a previous commit.
- `perf`: A change that improves performance.

Example commit messages:

```
feat(auth): add user registration
fix(auth, ui): resolve layout issue on smaller screens
docs(analytics): update contribution guidelines
```

When you commit changes to the repository following these types of commit patterns, Melos will automatically generate changelogs and bump the version of the affected packages.

Here are some additional tips for contributing to your monorepo:

- Make sure your changes are well-tested.
- Use descriptive commit messages.
- Follow the coding style of the project.
- Be respectful and polite in your interactions with other contributors.
