# djangoflow_analytics

`djangoflow_analytics` is a library for tracking analytics with multiple Analytics providers in Flutter applications. It is built on top of [analytics](https://pub.dev/packages/analytics/) package.

## Installation

To use this library in your project, add the following dependency to your pubspec.yaml file:

```yaml
dependencies:
  djangoflow_analytics: <latest_version>
  analytics: <latest_version>
```

Then run `flutter pub get` to install it.

## Usage

### Initialization

Before sending any data, the library must be initialized by calling the init method on the `DjangoflowAnalytics` class. It comes in handy if you want to disable sending analytics in specific cases like `development` environment.

```dart
DjangoflowAnalytics.instance.init();
```

### Adding Performers

To handle the data that is sent, you can create a class by exnteding `AnalyticActionPerformer` and add them to the `DjangoflowAnalytics` class.

```dart
abstract class CustomAnalyticsAction implements AnalyticAction, HasKey, HasMapParams {}

class CustomLoginEvent extends CustomAnalyticsAction {
  final String? method;

  CustomLoginEvent({this.method});
  @override
  String get key => 'login';

  @override
  Map<String, Object?> get params => {
        'method': method,
      };
}


class CustomAnalyticActionPerformer extends AnalyticsActionPerformer<CustomAnalyticsAction>{
    ...
}

final performer = CustomAnalyticActionPerformer<CustomAnalyticAction>(); // could be firebase, facebook etc.
DjangoflowAnalytics.instance.addAllActionPerformers([performer]);
```

### Sending Data

To send data, you can create an instance of AnalyticAction and pass it to the `performAction` method on the DjangoflowAnalytics class. It will internally look for suitable `ActionPerformer` for the `AnalyticsAction` and send the data.

```Dart
DjangoflowAnalytics.instance.performAction(CustomLoginEvent(method:'email'));
```

### Event Trimmer

It also provide a way to trim events by implementing `EventTrimmer` interface which has 4 methods, `trimName`, `trimValue`, `trimNullValueMapParams` and `trimMapParams`.

### User property trimmer

It also provide a way to trim user property by implementing `UserPropertyTrimmer` interface which has 2 methods, `trimName` and `trimValue`.

## Example

```dart
import 'package:djangoflow_analytics/djangoflow_analytics.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DjangoflowAnalytics.instance.init();
    final performer = CustomAnalyticActionPerformer<CustomAnalyticAction>();
    DjangoflowAnalytics.instance
        .addAllActionPerformers([performer]);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text("Email Sign-in"),
            onPressed: () {
              DjangoflowAnalytics.instance
                  .performAction(CustomLoginEvent(method:'email'));
            },
          ),
        ),
      ),
    );
  }
}
```

## Note

This library is still under development and may be subject to breaking changes.

## Contributions

We would love to have your contributions. Please feel free to open an issue or pull request.
