# djangoflow_error_reporter

Djangoflow Error Reporter is a library that provides an easy and flexible way to handle errors in your flutter application. It allows you to add multiple error reporters and provides a singleton for managing them all. It also provides basic functionality for initializing, reporting and updating user information.

## Installation

Add the package to your pubspec.yaml file:

```yaml
dependencies:
  djangoflow_error_reporter: <latest_version>
```

Then run `flutter pub get` to install the package.

## Usage

### Enabling error reporting

To enable the error reporter, you can use the `enableErrorReporting` method of `DjangoflowErrorReporter.instance`. Disabled by default.

```dart
DjangoflowErrorReporter.instance.enableErrorReporting();
```

### Initializing

To initialize the error reporter, you can use the `initialize` method of the `DjangoflowErrorReporter` class. This method takes in two optional strings, `env` and `release`. This will initialize/re-initialize with new env and release values.

```dart
DjangoflowErrorReporter.instance.initialize(env: 'production', release: '1.0.0+1');
```

### Reporting errors

To report an error, you can use the `report` method of the `DjangoflowErrorReporter` class. This method takes in an exception object and an optional stackTrace object.

```dart
try {
  // some code that throws an exception
} catch (e, s) {
  DjangoflowErrorReporter.instance.report(exception: e, stackTrace: s);
}
```

### Updating user information

To update the user information, you can use the `updateUserInformation` method of the `DjangoflowErrorReporter` class. This method takes in three optional strings, `id`, `email`, and `name`.

```dart
DjangoflowErrorReporter.instance.updateUserInformation(id: '123', email: 'user@example.com', name: 'John Doe');
```

### Adding error reporters

To add error reporters to the `DjangoflowErrorReporter` class, you can use the addAll method. This method takes in a list of `ErrorReporter` objects.

```dart
final errorReporter1 = CustomErrorReporter();
final errorReporter2 = AnotherCustomErrorReporter();
final errorReporters = [errorReporter1, errorReporter2];
DjangoflowErrorReporter.instance.addAll(errorReporters);
```

## Example

```dart
import 'package:djangoflow_error_reporter/djangoflow_error_reporter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DjangoflowErrorReporter.instance
        .initialize(env: 'production', release: '1.0.0+1');

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: () {
              try {
                throw Exception('Something went wrong');
              } catch (e, s) {
                DjangoflowErrorReporter.instance.report(exception: e, stackTrace: s);
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
