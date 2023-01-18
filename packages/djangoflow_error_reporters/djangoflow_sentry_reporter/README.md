# djangoflow_sentry_reporter

Djangoflow Sentry Reporter is a library that allows you to report errors to `Sentry` using the `DjangoflowErrorReporter` class. It is built on top of the `sentry_flutter` package and provides a simple and easy to use class for reporting errors to Sentry.

## Installation

Add the package to your pubspec.yaml file:

```yaml
dependencies:
djangoflow_sentry_reporter: <latest_version>
djangoflow_error_reporter: <latest_version> // Add this to use with DjangoflowErrorReporter
sentry_flutter: <latest_version> // Add this if you need other features from Sentry
```

Then run `flutter pub get` to install the package.

## Usage

To use the `DjangoflowSentryReporter` class, you need to create an instance of it by passing your Sentry DSN as a constructor argument.

```dart
final sentryReporter = DjangoflowSentryReporter("https://your_dsn_key@sentry.io/project_id");
```

Then you can add the `DjangoflowSentryReporter` class to the `DjangoflowErrorReporter` class

```dart
DjangoflowErrorReporter.instance.addAll([sentryReporter]);
```

Finally, you can report errors to `Sentry` by using the `DjangoflowErrorReporter.instance.report(e, s)` method

```dart
try {
// some code that throws an exception
} catch (e, s) {
  DjangoflowErrorReporter.instance.report(e, s); // this will send error through Sentry
}
```

### Initializing

You can also initialize the `DjangoflowSentryReporter` instance by passing env and release values to `DjangoflowErrorReporter.instance`

```dart
DjangoflowErrorReporter.instance.initialize(env: 'production', release: '1.0.0');
```

### Updating user information

You can update the user information by passing `id`, `email` and `name` values to `DjangoflowErrorReporter.instance`

```dart
DjangoflowErrorReporter.instance.updateUserInformation(id: '123', email: 'user@example.com', name: 'John Doe');
```

## Example

```dart
import 'package:djangoflow_sentry_reporter/djangoflow_sentry_reporter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sentryReporter = DjangoflowSentryReporter("https://your_dsn_key@sentry.io/project_id");
    DjangoflowErrorReporter.instance.addAll([sentryReporter]);
    DjangoflowErrorReporter.instance.initialize(env: 'production', release: '1.0.0');
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: () {
              try {
                throw Exception('Something went wrong');
              } catch (e, s) {
                DjangoflowErrorReporter.instance.report(e, s);
              }
            },
            child: Text('Throw Exception'),
          ),
        ),
      ),
    );
  }
}
```
