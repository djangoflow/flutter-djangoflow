import 'package:flutter/material.dart';
import 'error_reporting_service.dart';

/// [HomePage] is a stateless widget that takes an [ErrorReportingService] as a parameter.
class HomePage extends StatelessWidget {
  final ErrorReportingService reportingService;

  const HomePage({
    Key? key,
    required this.reportingService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Django Flow Sentry Report Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// A button to update user information
            ElevatedButton(
              onPressed: () {
                reportingService.updateUserInformation(id: '1234', email: 'test@example.com', name: 'John Doe');
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User information updated!")));
              },
              child: const Text('Update User Information'),
            ),

            /// A button to throw an exception, report the error
            ElevatedButton(
              onPressed: () {
                try {
                  throw Exception('Something went wrong');
                } catch (e, s) {
                  reportingService.reportError(exception: e, stackTrace: s);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Reported error: $e")));
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
