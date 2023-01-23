# djangoflow_fcm

A Dart package that provides a simple and easy-to-use solution for handling Firebase Cloud Messaging (FCM) functionality in a Flutter app.

## Installation

Add `djangoflow_fcm` as a dependency in your pubspec.yaml file:

```yaml
dependencies:
  djangoflow_fcm: <latest version>
```

## Usage

The package contains a `DjangoflowFCMBloc` that handles FCM functionality, a `DjangoflowFCMRepository` that communicates with the Firebase messaging service, and specialized `BlocListener` classes that can be used to listen for updates to the FCM token and message.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DjangoflowFCMBloc>(
          create: (context) => DjangoflowFCMBloc(
            DjangoflowFCMRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: DjangoflowFCMBlocMessageListener(
            listener: (context, state) {
              // Do something with the received message
            },
            child: DjangoflowFCMBlocTokenListener(
              listener: (context, state) {
                // Do something with the received token
              },
              child: MyHomePage(),
            ),
          ),
        ),
      ),
    );
  }
}
```

In the example above, `DjangoflowFCMBloc` is wrapped in a `BlocProvider` and provided to the entire app using `MultiBlocProvider`. The package also includes DjangoflowFCMBlocMessageListener and DjangoflowFCMBlocTokenListener which are used to listen for updates to the FCM message and token, respectively. You can use these classes to handle the received message and token.

## Additional Information

`DjangoflowFCMBloc` contains the following events:

- `DjangoflowFCMTokenRequested`
- `DjangoflowFCMInitialMessageRequested`
- `DjangoflowFCMOnTokenReceived`
- `DjangoflowFCMOnMessageReceived`

`DjangoflowFCMRepository` provides the following methods:

- `getForegroundRemoteMessageStream()`
- `getInitialRemoteMessage()`
- `getBackgroundRemoteMessageTappedStream()`
- `requestNotificationPermission()`
- `getToken()`
- `getTokenUpdateStream()`
- `deleteToken()`
- `isSupported()`

You can use these events and methods to customize the package as per your requirement.

## Contributions

This package is open for contributions and suggestions. If you find any bug or have any suggestion please open an issue or pull request.

## License

This package is provided under the MIT License.

Thank you for using djangoflow_fcm!
