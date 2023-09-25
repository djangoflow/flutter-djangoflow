import 'package:djangoflow_error_reporter/djangoflow_error_reporter.dart';
import 'package:djangoflow_sentry_reporter/djangoflow_sentry_reporter.dart';
import 'package:flutter/material.dart';

const String _kSentryDsn = ''; // Add your sentry dsn here

void main() {
  final reporter = DjangoflowSentryReporter(_kSentryDsn);
  DjangoflowErrorReporter.instance.addAll([reporter]);
  DjangoflowErrorReporter.instance.enableErrorReporting();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      appBar: AppBar(title: const Text('Home Page')),
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
              } catch (e, stacktrace) {
                DjangoflowErrorReporter.instance.report(
                  exception: e,
                  stackTrace: stacktrace,
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
