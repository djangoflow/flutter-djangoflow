import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      String? errorMessage;
      if (exception is _AppException) {
        errorMessage = exception.message;
      }
      errorMessage ??= 'An error occurred';

      DjangoflowAppSnackbar.showError(errorMessage);
    },
    rootWidgetBuilder: (builder) => builder(
      AppBuilder(
        providers: [
          BlocProvider<AppCubit>(create: (context) => AppCubit.instance),
        ],
        listeners: [
          BlocListener<AppCubit, AppState>(
            listenWhen: (previous, current) =>
                previous.environment != current.environment &&
                current.environment == AppEnvironment.live,
            listener: (context, state) {
              DjangoflowAppSnackbar.showInAppNotification(
                title: 'Environment Changed',
                body: 'App is in live environment now.',
              );
            },
          ),
        ],
        builder: (context) => AppCubitBuilder(
          builder: (context, state) => MaterialApp(
            theme: ThemeData(),
            scaffoldMessengerKey: DjangoflowAppSnackbar.scaffoldMessengerKey,
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData.dark(),
            themeMode: state.themeMode,
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Djangoflow App'),
                actions: const [
                  _ToggleThemeModeButton(
                    key: Key('theme_toggle'),
                  ),
                ],
              ),
              body: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    const _EnvironmentToggle(key: Key('environment_toggle')),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      child: const Text('Throw exception'),
                      onPressed: () =>
                          throw const _AppException('Test exception'),
                    ),
                  ],
                ),
              ),
            ),
            builder: (context, child) => SandboxBanner(
              isSandbox: state.environment == AppEnvironment.sandbox,
              child: child ?? const SizedBox.shrink(),
            ),
          ),
        ),
      ),
    ),
  );
}

class _ToggleThemeModeButton extends StatelessWidget {
  const _ToggleThemeModeButton({super.key});

  @override
  Widget build(BuildContext context) => AppCubitBuilder(
        builder: (context, state) => IconButton(
          onPressed: () => context.read<AppCubit>().updateThemeMode(
                state.themeMode == ThemeMode.dark
                    ? ThemeMode.light
                    : ThemeMode.dark,
              ),
          icon: Icon(
            state.themeMode == ThemeMode.dark
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
        ),
      );
}

class _EnvironmentToggle extends StatelessWidget {
  const _EnvironmentToggle({super.key});

  @override
  Widget build(BuildContext context) => AppCubitBuilder(
        builder: (context, state) => SwitchListTile.adaptive(
          applyCupertinoTheme: true,
          value: state.environment == AppEnvironment.live,
          title: const Text('Live Environment'),
          onChanged: (_) {
            context.read<AppCubit>().toggleEnvironment();
          },
        ),
      );
}

class _AppException implements Exception {
  const _AppException(this.message);

  final String message;

  @override
  String toString() => message;
}
