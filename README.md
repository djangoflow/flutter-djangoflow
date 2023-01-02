# flutter-djangoflow

Flutter modules for DjangoFlow

- **djangoflow_app** - A production ready setup for a djangoflow flutter app that will boostrap `App` widget and handle errors.
- **djangoflow_analytics** - This WIP module's idea is to utilize https://github.com/surfstudio/flutter-analytics package for flutter and create modular implementation of analytics module for firebase, facebook and mixpanel which we can re-reuse throughout different projects. This package will supply instance `AnalyticService` globally. For each of the analytics module there should be Action, `ActionPerformer`, `AnalyticsService` that we can use/add with the `DefaultAnalyticService` from `flutter-analytics` package in a unified way. Also this should decouple `djangoflow_app` from analytics related dependency Example:

  ```Dart
  late AnalyticService _analyticsService;

  @override
  void initState() {
  super.initState();
  // use different Analytics module here
  final analytics = FirebaseAnalytics();
  \_analyticsService = DefaultAnalyticService()
  ..addActionPerformer(FirebaseAnalyticEventSender(analytics));
  }
  // Rest of the code....
  ```

  - **djangoflow_firebase_analytics** - The package should be used for dispatching events/setting user props is https://pub.dev/packages/firebase_analytics and should implement accordingly to use with `AnalyticsService` instance provided by `djangflow_analytics`
  - **djangoflow_facebook_analytics** - The package should be used for dispatching events/setting user props is https://pub.dev/packages/facebook_app_events and should implement accordingly to use with `AnalyticsService` instance provided by `djangflow_analytics`
  - **djangoflow_mixpanel_analytics** - The package should be used for dispatching events/setting user props is https://pub.dev/packages/mixpanel_flutter and should implement accordingly to use with `AnalyticsService` instance provided by `djangflow_analytics`

- **djangoflow_auth** - A WIP complimentary module for https://github.com/djangoflow/django-df-auth ()
- **djangoflow_fcm_handler** - A WIP module to utilize `firebase_messaging` and handle cases to provide options to interact with Firebase notifications, requesting notification permission and FCMTokens.
- **djangoflow_common_utils** - A WIP module to handle common utility methods like picking up image, handling in app navigation from notification or launching url etc.
- **djangoflow_common_widgets** - A WIP module for common widgets like UserAvatar, ImagePickerWidget, AppVersion, Settings page related widgets etc
