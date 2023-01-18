djangoflow_mixpanel_analytics is a library built on top of the `analytics` and `mixpanel_flutter` packages for Flutter. It provides an easy and organized way to implement Mixpanel Analytics for your Flutter apps.

## Features

- Events: Tracking Mixpanel analytics events with parameters.
- User Properties Removal: Removing user ID and all user related super properties.
- User Properties Update: Updating user super properties such as email, first name, last name, user ID.

## Note

Please make sure to follow the guides by `mixpanel_flutter` [see the documentation](https://pub.dev/packages/mixpanel_flutter#1-install-mixpanel)

## Usage

To use this library, you will need to add the following dependencies to your pubspec.yaml file:

```yaml
dependencies:
djangoflow_mixpanel_analytics: <latest_version>
djangoflow_analytics: <latest_version>
mixpanel_flutter: <latest_version>
```

After that run `flutter pub get` to install them.
You can then import the library and use it in your code:

```dart
import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
```

You will need to initialize the library and add the `MixpanelAnalyticEventSender`, `MixpanelUserPropertyRemover` and `MixpanelUserPropertyUpdater` `ActionPeferomer`s to the `DjangoflowAnalytics` instance from `djangoflow_analytics` package.

You can then use the `DjangoflowAnalytics.instance.performAction` method to send data to Mixpanel Analytics.

```dart
final mixpanel = await Mixpanel.init(
    [MIXPANEL_TOKEN],
    optOutTrackingDefault: false,
    trackAutomaticEvents: true,
);
final mixpanelAnalyticsEventSender =
          MixpanelAnalyticEventSender(mixpanel);
final mixpanelUserPropertyUpdateder =
    MixpanelUserPropertyUpdater(mixpanel);
final mixpanelUserPropertyRemover = MixpanelUserPropertyRemover(mixpanel);

DjangoflowAnalytics.instance.init();
DjangoflowAnalytics.instance.addAllActionPerformers([

    mixpanelAnalyticsEventSender,
    mixpanelUserPropertyUpdateder,
    mixpanelUserPropertyRemover,

]);
```

Please find more details regarding it on `djangoflow_analytics` [package](https://pub.dev/packages/djangoflow_analytics).

## Contribution

We would love to have your help in making Djangoflow Mixpanel Analytics better. If you are interested in contributing to the project, please check out the contribution guidelines.
r this package might be useful for them.
