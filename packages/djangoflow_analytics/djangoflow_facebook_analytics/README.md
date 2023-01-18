# djangoflow_facebook_analytics

djangoflow_facebook_analytics is a library built on top of the `analytics` and `facebook_app_events` packages for Flutter. It provides an easy and organized way to implement Facebook Analytics for your Flutter apps.

## Features

- Advertise Tracking: Enabling or disabling advertiser tracking for your app.
- Events: Logging Facebook App events with parameters and value to sum.
- User Properties Removal: Removing user ID and all user data.
- User Properties Update: Updating user properties such as email, first name, last name, user ID.

## Note

Please make sure you have set up the facebook app events related configuration for Android and iOS. Follow this [link](https://pub.dev/packages/facebook_app_events#setting-things-up)

This package only works on iOS and Android.

## Usage

To use this library, you will need to add the following dependencies to your pubspec.yaml file:

```yaml
dependencies:
djangoflow_facebook_analytics: <latest_version>
djangoflow_analytics: <latest_version>
facebook_app_events: <latest_version>
```

After that run `flutter pub get` to install them.
You can then import the library and use it in your code:

```dart
import 'package:djangoflow_facebook_analytics/djangoflow_facebook_analytics.dart';
```

You will need to initialize the library and add the `FacebookAdvertiseTrackingUpdater`, `FacebookAnalyticEventSender`, `FacebookUserPropertyRemover` and `FacebookUserPropertyUpdater` to the `DjangoflowAnalytics` instance from `djangoflow_analytics` package.

You can then use the `DjangoflowAnalytics.instance.performAction` method to send data to Facebook Analytics.

```dart
final facebookAppEvents = FacebookAppEvents;
if (!kIsWeb) {
    final FacebookAppEvents facebookAppEvents = FacebookAppEvents();

    final facebookAnalyticsEventSender =
        FacebookAnalyticEventSender(facebookAppEvents);
    final facebookUserPropertyUpdateder = FacebookUserPropertyUpdater(
        facebookAppEvents,
    );
    final facebookUserPropertyRemover =
        FacebookUserPropertyRemover(facebookAppEvents);
    final facebookAdvertiseTracking = FacebookAdvertiseTrackingUpdater(
        facebookAppEvents,
    );
    facebookActionPerformers.addAll([
        facebookAnalyticsEventSender,
        facebookUserPropertyUpdateder,
        facebookUserPropertyRemover,
        facebookAdvertiseTracking,
    ]);
}

DjangoflowAnalytics.instance.init();
DjangoflowAnalytics.instance.addAllActionPerformers(facebookActionPerformers);
```

Please find more details regarding it on `djangoflow_analytics` [package](https://pub.dev/packages/djangoflow_analytics).

## Contribution

We would love to have your help in making Djangoflow Facebook Analytics better. If you are interested in contributing to the project, please check out the contribution guidelines.
