# Deep-link extraction and listening based on app_links and djangoflow_deep_link_interface.

This package is a concrete implementation of the djangoflow_deep_link_interface package which provides abstract classes for handling app links. It uses the `app_links` package, which provides a simple way to handle links on both Android and iOS.

## Getting started

Install it via [pub.dev](https://pub.dev/packages/djangoflow_app_links/install)

## Usage

To use the `AppLinksRepository`, you first need to create an instance of it:

```dart
final appLinksRepository = AppLinksRepository();
```

_`getInitialLink()`_
This method returns the initial app link as a future that resolves to a Uri or null if it doesn't exist.

```dart
final initialLink = await appLinksRepository.getInitialLink();
```

_`getLinkStream()`_
This method returns a stream of incoming app links as Uri.

```dart
final linkStream = appLinksRepository.getLinkStream();
linkStream.listen((link) => print(link));
```

This class provides the implementation for the abstract methods defined in `DjangoflowDeepLinkRepositoryBase<Uri>` so that the class can be used to create a cubit that can handle app links.

To use the `AppLinksCubit`, you first need to create an instance of it with a concrete repository and initial state:

```dart
final appLinksRepository = AppLinksRepository();
// Provide the AppLinksCubit
BlocProvider<AppLinksCubit>(
    create: (context) => AppLinksCubit(
        null,
        appLinksRepository,
    )..startListening(), // this will start listening to the upcoming deep links
),
// Listen to Uri changes
AppLinksCubitListener(
    listenWhen: (previous, current) =>
        current != null,
    listener: (context, appLink) {
        final path = appLink?.path;
        if (path != null) {
            // navigate to the path
        }
    },
    child: child,
)
```

## Limitations

- This package is only applicable to mobile platforms(iOS and Android)
- This package is dependent on app_links package, make sure to follow their setup instructions as well
