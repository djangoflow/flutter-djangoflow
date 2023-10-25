# djangoflow_app

A simple, opinionated, and minimal Flutter application structure for quick start and easy maintenance.

## Getting started

Add `djangoflow_app` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  djangoflow_app: <latest version>
```

Import `djangoflow_app` and use it to create your root StatelessWidget.

```dart
import 'package:djangoflow_app/djangoflow_app.dart';

void main() => DjangoflowAppRunner.run(
      onException: (exception, stackTrace) {
        // Your custom exception handling
      },
      rootWidgetBuilder: (appBuilder) async {
        return MaterialApp(
          title: 'Djangoflow App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: appBuilder(AppBuilder(
            repositoryProviders: [
              // Your repository providers
            ],
            providers: [
              // Your BLoC providers
            ],
            listeners: [
              // Your BLoC listeners
            ],
            builder: (context) => YourRootWidget(),
          )),
        );
      },
    );
```

## Features

`AppBuilder`: A custom `StatelessWidget` that allows you to provide global `BlocProvider`, `BlocListener`, `RepositoryProvider`, and callbacks for initState and dispose in a single place.

`AppCubitBuilder`, `AppCubitConsumer`, and `AppCubitListener`: A set of custom `BlocBuilder`, `BlocConsumer`, and `BlocListener` that allows you to listen to the AppCubit state changes.

`DjangoflowAppRunner`: A custom runApp that allows you to handle exceptions globally and sets up the `HydratedBloc` storage and `BlocObserver` for the entire application.

`DjangoflowAppSnackbar`: A simple `SnackBar` manager that allows you to show different types of `SnackBar` (info, error, in-app notification) globally with a single instance.

`SandboxBanner`: A simple Banner that allows you to show a banner on the top-start corner of the screen with a custom message and color. It's useful to indicate the current environment (e.g., sandbox, production).

`EnvSwitcher`: A simple widget that allows you to toggle between different environments with a long press.

## Note

`DjangoflowAppSnackbar` uses `ScaffoldMessenger`. `DjangoflowAppSnackbar`'s global key needs to be provided to `MaterialApp`'s `scaffoldMessengerKey`.
