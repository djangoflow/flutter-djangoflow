<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

1. Provides callbacks for FCM token initialize/refresh, onOpenNotificationArrive, onMessageTap
2. Requests for required permission and opens app settings optionally

## Getting started

[Add djangoflow_firebase_messaging](https://pub.dev/packages/djangoflow_firebase_messaging/install) to your app's dependency and start to use it.

## Usage

```dart
        DjangoflowFirebaseNotificationHandler(
          onFCMTokenInitialize: (token) {
            debugPrint("Token Received in UI : $token");
          },
          onFCMTokenRefresh: (token) {
            debugPrint("Updated Token Received in UI : $token");
          },
          child: widget, //Replace with your widget preferably MaterialApp or App from df_app 
          onMessageTap: (message) {
            debugPrint("Message Tapped and opened app : ${message.data}");
          },
          onOpenNotificationArrive: (message) =>
              debugPrint("Foreground Notification : ${message.data}"),
          vapidKey: "REPLACE_WITH_YOUR_VAPID_KEY",
        );
```

## Documentation

[djangoflow_app documentation](https://pub.dev/documentation/djangoflow_firebase_messaging/latest/df_fcm/df_fcm-library.html)
