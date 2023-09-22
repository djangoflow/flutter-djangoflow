import 'package:djangoflow_error_reporter/djangoflow_error_reporter.dart';
import 'package:flutter/material.dart';

void main() {
  DjangoflowErrorReporter.instance.enableErrorReporting();
  DjangoflowErrorReporter.instance.addAll([_LoggerErrorReporter()]);

  DjangoflowErrorReporter.instance.initialize(
    env: 'production',
    release: '1.0.0+1',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage();

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  _AppEnv _appEnv = _AppEnv.live;

  _AppEnv get appEnv => _appEnv;

  set appEnv(_AppEnv value) {
    setState(() {
      _appEnv = value;
      DjangoflowErrorReporter.instance.initialize(
        env: value.toString(),
        release: '1.0.0+1',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile.adaptive(
            value: appEnv == _AppEnv.live,
            title: Text('${appEnv.name.toString().toUpperCase()} Environment'),
            onChanged: (value) {
              appEnv = value ? _AppEnv.live : _AppEnv.staging;
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              try {
                throw Exception('Test Exception');
              } catch (error) {
                DjangoflowErrorReporter.instance.report(
                  exception: error,
                  stackTrace: StackTrace.current,
                );
              }
            },
            child: const Text('Throw Exception'),
          ),
        ],
      ),
    );
  }
}

enum _AppEnv { live, staging }

class _LoggerErrorReporter extends ErrorReporter {
  String? env;
  String? release;

  String? id;
  String? email;
  String? name;

  _LoggerErrorReporter() : super();

  @override
  Future<void> initialize({
    String? env,
    String? release,
  }) async {
    this.env = env;
    this.release = release;
  }

  @override
  Future<void> report({
    required Object exception,
    StackTrace? stackTrace,
  }) async {
    debugPrint(['$release [$env]', 'Exception: $exception'].join('\n'));
    debugPrintStack(stackTrace: stackTrace);
    debugPrint('*' * 20);
  }

  @override
  Future<void> updateUserInformation({
    String? id,
    String? email,
    String? name,
  }) async {
    this.id = id;
    this.email = email;
    this.name = name;
  }
}
