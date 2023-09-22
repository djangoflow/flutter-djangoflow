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
      child: MaterialApp(
        routes: {
          '/': (context) => const _HomePage(),
          '/primary': (context) => const _PrimaryPage(),
          '/secondary': (context) => const _SecondaryPage(),
        },
      ),
    ),
  );
}

class _HomePage extends StatelessWidget {
  const _HomePage();

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

class _PrimaryPage extends StatelessWidget {
  const _PrimaryPage();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Primary Page')),
      );
}

class _SecondaryPage extends StatelessWidget {
  const _SecondaryPage();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Secondary Page')),
      );
}
