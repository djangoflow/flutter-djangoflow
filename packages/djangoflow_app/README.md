## Features

This is a very opinionated setup of a production grade flutter app.

What you get out of the box:

- a safe way to run your material app
- exception handling
- sentry setup
- analytics - firebase, facebook and mixpanel with screen events logging
- auto_route setup
- sandbox and live environments and switching between them
- switching of app theme
- switching op app locale
- firebase message handling
- app lifecycle handling

## Getting started

[Add djangoflow_app](https://pub.dev/packages/djangoflow_app/install) to your app's dependency and start to use it.

## Usage

The minimal setup with djangoflow_app should look like this.

```dart
// Sample Router from auto_route
final _appRouter = AppRouter();
void main() {
  App.runGuarded(
    // Pass the app widget here
    app: App(
      title: 'Router App',
      brightTheme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerBuilder: () => _appRouter,
      initialRoutes: [HomeTabRoute()],
      builder: (context, widget, state, router) => BlocProvider(
        create: (context) => CounterCubit(),
        child: widget,
      ),
    ),
    onInit: () async {
      // Initialize firebase
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      // Initialize analytics
      await AppAnalytics.instance.init(
        disableFacebook: true,
        disableMixpanel: true,
        disableFirebase: true,
      );
    },
    onException: (exception, stackTrace) {
      print('Caught Exceptions $exception');
    },
  );
}
```

## Documentation

[djangoflow_app documentation](https://pub.dev/documentation/djangoflow_app/latest/df_app/df_app-library.html)
