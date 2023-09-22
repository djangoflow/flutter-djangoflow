import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appLinksRepository = AppLinksRepository();
  final initialLink = await appLinksRepository.getInitialLink();

  runApp(
    BlocProvider(
      create: (context) => AppLinksCubit(
        initialLink,
        appLinksRepository,
      ),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/primary': (context) => const PrimaryPage(),
        '/secondary': (context) => const SecondaryPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => AppLinksCubitListener(
        listener: (context, state) {
          if (state == null) return;
          Navigator.of(context).pushNamed(state.path);
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Home Page')),
        ),
      );
}

class PrimaryPage extends StatelessWidget {
  const PrimaryPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Primary Page')),
      );
}

class SecondaryPage extends StatelessWidget {
  const SecondaryPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Secondary Page')),
      );
}
