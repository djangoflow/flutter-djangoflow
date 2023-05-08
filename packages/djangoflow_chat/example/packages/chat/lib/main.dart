import 'dart:async';

import 'package:chat/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'chat_app_builder.dart';
import 'configurations/configurations.dart';
import 'features/app/app.dart';
// TODO uncomment after firebase integration
// import 'firebase_options.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      debugPrint('Exception Caught -- $exception');
      // Dispatch exception to error reporters
      // ExeptionFilter.filter(exception); returns: true -> show exception to user or false -> do not show
      DjangoflowAppSnackbar.showError(
        exception is DioError
            ? exception.message ?? 'Something went wrong!'
            : exception.toString(),
      );
    },
    rootWidgetBuilder: (appBuilder) async {
      // Initialze project specific initializations
      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );

      // TODO Error reporting [djangoflow_error_reporter]
      // TODO Analytics setup [djangoflow_analytics]
      AppCubit.initialState = AppState(
        themeMode: ThemeMode.dark,
        environment: AppDomain.preferredEnvironment,
      );

      String? initialDeepLink;
      final appLinksRepository = AppLinksRepository();
      if (!kIsWeb) {
        initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
      }

      // initialize router
      final router = AppRouter(
        authGuard: AuthGuard(),
      );

      // Enable this test upgrade dialog
      // await Upgrader.clearSavedSettings();
      ApiRepository.instance.updateBaseUrl(
          AppCubit.instance.state.environment == AppEnvironment.sandbox
              ? kSandboxBasePath
              : kLiveBasePath);

      return appBuilder(
        ChatAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
        ),
      );
    },
  );
}
