<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Logo" width="200">
  <h1 align="center">DjangoFlow Local Notification Package</h1>
</div>

<p align="center">
  <strong>📬 A streamlined and flexible local notification solution for Flutter mobile apps, seamlessly integrated with DjangoFlow framework to enable dynamic notification actions.</strong>
</p>

<div align="center">
  <a href="#features">Features</a> •
  <a href="#installation">Installation</a> •
  <a href="#usage">Usage</a> •
  <a href="#customization">Customization</a> •
  <a href="#troubleshooting">Troubleshooting</a> •
  <a href="#examples">Examples</a> •
  <a href="#contributions">Contributions and Issues</a> •
  <a href="#license">License</a>
</div>

<br>

<h2 id="features">✨ Features</h2>

- Initialize the local notification plugin with ease using `NotificationInitializer`.
- Seamlessly integrated with DjangoFlow framework and `djangoflow_openapi` package.
- Define and manage push action categories for interactive notifications.
- Handle notification data payload and actions conveniently.
- Download and attach images to notifications using `ImageDownloader`.
- Modular structure for clean and organized code.

<h2 id="installation">🚀 Installation</h2>

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_local_notification: ^latest_version
```

**Note**: This package is designed to work exclusively on Android and iOS platforms. It uses [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications) under the hood. You can follow their documentation on platform specific setup and troubleshooting.

<h2 id="usage">🔧 Usage</h2>

### 1. Initialize Notifications

```dart
import 'package:djangoflow_local_notification/djangoflow_local_notification.dart';

// Initialize notifications
final notificationInitializer = NotificationInitializer();
await notificationInitializer.initialize(
  pushActions: pushActionCategories, // List<PushActionCategory>
  defaultAndroidNotificationIcon: 'app_icon',
);
```

### 2. Load Push Action Categories

```dart
import 'package:djangoflow_local_notification/djangoflow_local_notification.dart';

final actionCategoryCubit = ActionCategoryCubit.instance;

// Load push action categories
await actionCategoryCubit.load();
```

### 3. Display Local Notifications

```dart
import 'package:djangoflow_local_notification/djangoflow_local_notification.dart';

final localNotificationCubit = LocalNotificationCubit.instance;

await localNotificationCubit.displayNotification(
  notificationDetailsBuilder: () async {
    // Build NotificationDetails here
    return NotificationDetails(/*...*/);
  },
  id: 1,
  title: 'Notification Title',
  body: 'Notification Body',
  payload: 'payload_data',
);
```

<h2 id="customization">🎨 Customization</h2>

- Customize notification appearance using `NotificationDetails`.
- Use custom action categories and actions for interactive notifications.
- Attach images to notifications using `ImageDownloader`.

<h2 id="troubleshooting">🛠 Troubleshooting</h2>

### Android - Notification Icon Not Found in Release Mode

If you're facing issues with notification icons not being found in release mode on Android, you can try the following solution:

1. Create a file named `keep.xml` in the `app/src/main/res/raw/` directory of your Android project.

2. Add(create the file if does not exist) the following content to the `keep.xml` file:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources xmlns:tools="http://schemas.android.com/tools"
    tools:keep="@drawable/*,@raw/slow_spring_board" />
```

<h2 id="examples">🚀 Examples</h2>

Check out the example provided in the [`example`](example) directory for a practical implementation of the package.

<h2 id="contributions">👏 Contributions and Issues</h2>

Contributions, bug reports, and feature requests are welcome! Feel free to submit a pull request or open an issue on the [GitHub repository](https://github.com/djangoflow/flutter-djangoflow/).

<h2 id="license">📄 License</h2>

This package is distributed under the [MIT License](/LICENSE).

```

```
