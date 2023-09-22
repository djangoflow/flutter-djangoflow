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
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
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
      ),
    );
  }
}

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
