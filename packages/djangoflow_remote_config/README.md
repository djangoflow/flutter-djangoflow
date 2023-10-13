<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="Djangoflow Remote Config Logo" width="200">
  <h1 align="center">🌐 Djangoflow Remote Config for Flutter 🌐</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_remote_config">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_remote_config.svg">
  </a>
</p>

<p align="center">
  A Flutter package for managing remote configurations in your Flutter applications, designed to work seamlessly with <a href="https://github.com/djangoflow/django-df-remote-config">django-df-remote-config. </a>
</p>

---

## 🌟 Features

- **Dynamic Configuration**: Load configurations dynamically from the server.
- **Fallback Support**: Use fallback configurations when the server is unreachable.
- **Hydrated State**: Save and restore state across app launches.
- **Part-based Loading**: Load specific parts of the configuration as needed.

## 📦 Installation

To add `djangoflow_remote_config` to your Flutter project, add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  djangoflow_remote_config: <latest_version>
```

Then, run:

```bash
flutter pub get
```

## 🚀 Quick Start

### 🌅 App Startup

Make sure to call `AppLaunchRemoteConfigCubit` during your app's startup. This will contain updates of different parts with their last changed `DateTime` objects.

```dart
final appLaunchCubit = AppLaunchRemoteConfigCubit(
  fallbackConfig: {
    // Your fallback configurations here
  },
  params: {
    "app": "com.example.app"
  },
);

appLaunchCubit.load();
```

### 🔄 Dynamic Configuration Loading

Use `RemoteConfigPartUpdater` to load the necessary data based on the last updated time. If the data is not updated, it will use the fallback data or the last hydrated state.

```dart
RemoteConfigPartUpdater<AppLaunchRemoteConfigCubit>(
  create: (context) => AppLaunchRemoteConfigCubit(
    // Your configurations here
  ),
  child: YourWidget(),
)
```

### 🛠 Parameters

- `fallbackConfig`: The default configuration to use if the server is unreachable.
- `params`: Additional parameters to send to the server.
- `useOnlyFallbackOnError`: Whether to use only the fallback configuration on error.

## 📖 Example App

Check out the `example` directory for a complete example app demonstrating the package's capabilities.

## 🤝 Contributing

We welcome contributions! Feel free to open an issue or submit a pull request if you have any improvements or find any bugs.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
