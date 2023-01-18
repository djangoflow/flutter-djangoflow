# flutter-djangoflow

Flutter modules for DjangoFlow

- `djangoflow_app` - A simple, opinionated, and minimal Flutter application structure for quick start and easy maintenance.
- `df_auth` - A WIP complimentary module for https://github.com/djangoflow/django-df-auth
- `djangoflow_deep_link`: Deep-link handling libraries by Djangoflow
  - `djangoflow_deep_link_interface`: This package provides interface to implement handling deep-link in flutter applications.
  - `djangoflow_app_links`: Concrete implementation of `djangoflow_deep_link_interface` using `app_links` package.
- `djangoflow_push_notification`: Libraries to handle push notification from different push notification services.
  - `djangoflow_fcm`: A Dart package that provides a simple and easy-to-use solution for handling Firebase Cloud Messaging (FCM) functionality in a Flutter app.
- `djangoflow_error_reporters`: Libraries to provide interface and concrete implementation for error reporting.

  - `djangoflow_error_reporter` : Djangoflow Error Reporter is a library that provides an easy and flexible way to handle errors in your flutter application.
  - `djangoflow_sentry_reporter` : Djangoflow Sentry Reporter is a library that allows you to report errors to `Sentry` using the `djangoflow_error_reporter` package.

- `djangoflow_analytics`: Libraries to provide interface and concrete implementation for sending analytics data.
  - `djangoflow_analytics`: A library for tracking analytics with multiple Analytics providers in Flutter applications.
  - `djangoflow_facebook_analytics`: A library provides an easy and organized way to implement Facebook Analytics for your Flutter apps.
  - `djangoflow_firebase_analytics`: A library provides an easy and organized way to implement Firebase Analytics for your Flutter apps.
  - `djangoflow_mixpanel_analytics`: A library provides an easy and organized way to implement Mixpanel Analytics for your Flutter apps.
