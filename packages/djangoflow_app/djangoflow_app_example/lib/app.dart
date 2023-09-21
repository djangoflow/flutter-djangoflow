import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => AppCubitBuilder(
        builder: (context, state) => MaterialApp(
          theme: ThemeData(),
          scaffoldMessengerKey: DjangoflowAppSnackbar.scaffoldMessengerKey,
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          themeMode: state.themeMode,
          home: const HomePage(),
          builder: (context, child) => SandboxBanner(
            isSandbox: state.environment == AppEnvironment.sandbox,
            child: child ?? const SizedBox.shrink(),
          ),
        ),
      );
}
