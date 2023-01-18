# djangoflow_firebase_analytics

djangoflow_firebase_analytics is a library built on top of the `analytics` and `firebase_analytics` packages for Flutter. It provides an easy and organized way to implement Firebase Analytics for your Flutter apps.

## Features

- Events: Logging Firebase App events with parameters and value to sum.
- User Properties Removal: Removing user ID and all user data.
- User Properties Update: Updating user properties such as email, first name, last name, user ID.

## Note

Please make sure to follow the guides by `firebase_analytics` [see the documentation](https://firebase.flutter.dev/docs/messaging/overview)

## Usage

To use this library, you will need to add the following dependencies to your pubspec.yaml file:

```yaml
dependencies:
djangoflow_firebase_analytics: <latest_version>
djangoflow_analytics: <latest_version>
firebase_analytics: <latest_version>
```

After that run `flutter pub get` to install them.
You can then import the library and use it in your code:

```dart
import 'package:djangoflow_firebase_analytics/djangoflow_firebase_analytics.dart';
```

You will need to initialize the library and add the `FirebaseAnalyticEventSender`, `FirebaseUserPropertyRemover` and `FirebaseUserPropertyUpdater` to the `DjangoflowAnalytics` instance from `djangoflow_analytics` package.

You can then use the `DjangoflowAnalytics.instance.performAction` method to send data to Firebase Analytics.

```dart
final firebaseAnalyticsEventSender =
          FirebaseAnalyticEventSender(firebaseAnalytics);
final firebaseUserPropertyUpdateder =
    FirebaseUserPropertyUpdater(firebaseAnalytics);
final firebaseUserPropertyRemover =
    FirebaseUserPropertyRemover(firebaseAnalytics);

DjangoflowAnalytics.instance.init();
DjangoflowAnalytics.instance.addAllActionPerformers([
    firebaseAnalyticsEventSender,
    firebaseUserPropertyUpdateder,
    firebaseUserPropertyRemover,
]);
```

Please find more details regarding it on `djangoflow_analytics` [package](https://pub.dev/packages/djangoflow_analytics).

## Contribution

We would love to have your help in making Djangoflow Firebase Analytics better. If you are interested in contributing to the project, please check out the contribution guidelines.
