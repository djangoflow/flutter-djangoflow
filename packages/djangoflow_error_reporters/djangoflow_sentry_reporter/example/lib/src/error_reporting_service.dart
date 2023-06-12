import 'package:djangoflow_error_reporter/djangoflow_error_reporter.dart';
import 'package:djangoflow_sentry_reporter/djangoflow_sentry_reporter.dart';
import 'package:flutter/foundation.dart';

import 'env.dart';

// Class to handle error reporting with DjangoflowSentryReporter
class ErrorReportingService {
  // Sentry reporter for error tracking.
  final DjangoflowSentryReporter _sentryReporter;

  // Singleton instance of ErrorReportingService.
  static ErrorReportingService? _instance;

  static const _uriOfSentryDNS = "https://your_dsn_key@sentry.io/project_id";

  // Factory constructor to return the singleton instance.
  factory ErrorReportingService({required Environment env, required String release}) {
    _instance ??= ErrorReportingService._internal(env, release);
    return _instance!;
  }

  // Private constructor initializing the Sentry reporter.
  ErrorReportingService._internal(Environment env, String release)
      : _sentryReporter = DjangoflowSentryReporter(_uriOfSentryDNS) {
    _initialize(env: env, release: release);
  }

  /// Initialize DjangoflowErrorReporter with DjangoflowSentryReporter and register global errors.
  void _initialize({required Environment env, required String release}) {
    // Enable error reporting only in production environment.
    // Can modify based on needs and env values
    if (env == Environment.prod) {
      DjangoflowErrorReporter.instance.enableErrorReporting();
    }

    // Add Sentry reporter to DjangoflowErrorReporter.
    DjangoflowErrorReporter.instance.addAll([_sentryReporter]);

    // Initialize DjangoflowErrorReporter with environment and release details.
    DjangoflowErrorReporter.instance.initialize(env: env.name, release: release);

    // Setup Flutter error handling to report errors.
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      reportError(exception: details.exception, stackTrace: details.stack);
    };

    // Setup platform-level error handling to report errors.
    PlatformDispatcher.instance.onError = (error, stack) {
      reportError(exception: error, stackTrace: stack);
      return true;
    };
  }

  // Update user information in DjangoflowErrorReporter.
  void updateUserInformation({required String id, required String email, required String name}) {
    DjangoflowErrorReporter.instance.updateUserInformation(id: id, email: email, name: name);
  }

  // Method to report errors to Sentry via DjangoflowErrorReporter.
  void reportError({required dynamic exception, required dynamic stackTrace}) {
    DjangoflowErrorReporter.instance.report(exception: exception, stackTrace: stackTrace);
  }
}
