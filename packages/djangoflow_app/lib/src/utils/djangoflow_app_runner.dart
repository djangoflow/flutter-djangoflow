import 'dart:async';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import 'package:djangoflow_app/src/bloc/bloc_exception_observer.dart';

typedef OnExceptionCallBack = Function(
  Object exception,
  StackTrace? stackTrace,
);
typedef RootWidgetBuilder = FutureOr<Widget?> Function(
  AppBuilder Function(AppBuilder appBuilder) builder,
);

typedef FlutterErrorBuilder = Widget Function(FlutterErrorDetails error);

class DjangoflowAppRunner {
  static Future<void> run({
    required OnExceptionCallBack onException,
    required RootWidgetBuilder rootWidgetBuilder,

    /// To provide custom widget for flutter errors
    /// This will override the default [ErrorWidget]
    /// https://docs.flutter.dev/testing/errors#handling-all-types-of-errors
    FlutterErrorBuilder? flutterErrorBuilder,
  }) async =>
      runZonedGuarded(
        () async {
          WidgetsFlutterBinding.ensureInitialized();
          AppCubit.packageInfo = await PackageInfo.fromPlatform();
          // Does not support web https://docs.flutter.dev/testing/errors#handling-all-types-of-errors
          // https://github.com/flutter/flutter/issues/100277
          FlutterError.onError = (details, {bool forceReport = false}) {
            debugPrint('>>> ${details.exception}, ${details.stack}');
            onException(details.exception, details.stack);
          };

          ErrorWidget.builder = (FlutterErrorDetails error) {
            if (error.stack != null) {
              Zone.current.handleUncaughtError(error.exception, error.stack!);
            }

            return _buildDebugErrorWidget(
              error: error,
              flutterErrorBuilder: flutterErrorBuilder,
            );
          };

          final storage = await HydratedStorage.build(
            storageDirectory: kIsWeb
                ? HydratedStorage.webStorageDirectory
                : await getTemporaryDirectory(),
          );

          HydratedBloc.storage = storage;
          Bloc.observer = BlocExceptionObserver(onException: onException);
          final appbuilder =
              await rootWidgetBuilder((appBuilder) => appBuilder);
          if (appbuilder == null) {
            return;
          } else {
            runApp(
              appbuilder,
            );
          }
        },
        (exception, stackTrace) async {
          debugPrint('>>> $exception, $stackTrace');

          onException(exception, stackTrace);
        },
      );

  static Widget _buildDebugErrorWidget({
    required FlutterErrorDetails error,
    FlutterErrorBuilder? flutterErrorBuilder,
  }) {
    final exception = error.exception;
    String message = '';

    try {
      message = '${exception.toString()}\n${error.stack.toString()}';
    } catch (e) {
      message = 'An error was thrown';
    }
    // Without Scaffold showing snackbar will show error as there are no Scaffold
    // to show snackbar
    return Scaffold(
      body: flutterErrorBuilder != null
          ? flutterErrorBuilder(error)
          : !kDebugMode
              ? const Offstage()
              : ErrorWidget.withDetails(
                  message: message,
                  error: exception is FlutterError ? exception : null,
                ),
    );
  }
}
