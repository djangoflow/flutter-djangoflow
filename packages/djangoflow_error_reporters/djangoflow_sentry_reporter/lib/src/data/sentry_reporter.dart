import 'package:djangoflow_error_reporter/djangoflow_error_reporter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class DjangoflowSentryReporter extends ErrorReporter {
  DjangoflowSentryReporter(this.sentryDSN);
  final String sentryDSN;

  @override
  Future<void> initialize({String? env, String? release}) async =>
      await SentryFlutter.init(
        (options) => options
          ..dsn = sentryDSN
          ..environment = env
          ..release = release
          ..enableAutoSessionTracking =
              false, //https://glitchtip.com/sdkdocs/dart-flutter
      );

  @override
  Future<void> report({
    required Object exception,
    StackTrace? stackTrace,
  }) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  }

  @override
  Future<void> updateUserInformation({
    String? id,
    String? email,
    String? name,
  }) async =>
      await Sentry.configureScope(
        (config) => config
          ..setUser(
            SentryUser(
              id: id,
              email: email,
              name: name,
            ),
          ),
      );
}
