# DjangoFlow BLoC Extensions

<p align="left">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_bloc_extensions">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_bloc_extensions.svg">
  </a>
</p>

DjangoFlow BLoC Extensions is a Flutter package that provides helpful extensions and mixins to enhance the behavior of BLoC classes in your Flutter applications. This package is particularly useful for situations where you need to customize or improve the behavior of BLoCs.

## Installation

Add `djangoflow_bloc_extensions` to your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_bloc_extensions: <latest_version>
```

Then, run:

```sh
flutter pub get
```

## Usage

### SafeEmitMixin

Are you having seeing errors like `Bad state: Cannot emit new states after calling close` due to https://github.com/felangel/bloc/issues/3069? Then `SafeEmitMixin` can help you.
The `SafeEmitMixin` is a mixin that enforces that the `emit` method can only be called safely when the BLoC is not closed. To use this mixin, follow these steps:

1. Import the necessary libraries:

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:djangoflow_bloc_extensions/safe_emit_mixin.dart';
```

2. Create your Cubit class and include the `SafeEmitMixin`:

```dart
class MyCubit extends Cubit<MyState> with SafeEmitMixin<MyState> {
  // ... Your BLoC logic ...
}
```

Now, the `emit` method in your `MyCubit` class will only emit states when the BLoC is not closed, ensuring safer state management.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request on [GitHub](https://github.com/djangoflow/flutter-djangoflow).

## License

This package is open-source and available under the [MIT License](LICENSE).
