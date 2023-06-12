import 'package:flutter/material.dart';

import 'src/error_reporting_service.dart';
import 'src/env.dart';
import 'src/home_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize Error Reporting Service with preffered environment variables
  final errorReportingService = ErrorReportingService(
    env: Environment.prod,
    release: '1.0.0',
  );

  runApp(
    MaterialApp(
      title: 'Django Flow Sentry Reporter Demo',
      home: HomePage(reportingService: errorReportingService),
    ),
  );
}
