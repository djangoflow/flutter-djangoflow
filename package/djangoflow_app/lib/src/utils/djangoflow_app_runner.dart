import 'dart:async';

import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../bloc/bloc_exception_observer.dart';

typedef OnExceptionCallBack = Function(
    Object exception, StackTrace? stackTrace);
typedef RootWidgetBuilder = FutureOr<Widget> Function(
    AppBuilder Function(AppBuilder appBuilder) builder);

class DjangoflowAppRunner {
  static Future<void> run({
    required OnExceptionCallBack onException,
    required RootWidgetBuilder rootWidgetBuilder,
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

          if (!kDebugMode) {
            ErrorWidget.builder = (FlutterErrorDetails error) {
              Zone.current.handleUncaughtError(error.exception, error.stack!);

              return const Offstage();
            };
          }
          final storage = await HydratedStorage.build(
            storageDirectory: kIsWeb
                ? HydratedStorage.webStorageDirectory
                : await getTemporaryDirectory(),
          );

          HydratedBloc.storage = storage;
          Bloc.observer = BlocExceptionObserver(onException: onException);

          runApp(
            await rootWidgetBuilder((appBuilder) => appBuilder),
          );
        },
        (exception, stackTrace) async {
          debugPrint('>>> $exception, $stackTrace');

          onException(exception, stackTrace);
        },
      );
}
