<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="Djangoflow Scrollable Column Logo" width="200">
  <h1 align="center">📜 Djangoflow Scrollable Column for Flutter 📜</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_scrollable_column">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_scrollable_column.svg">
  </a>
</p>

<p align="center">
  A Flutter package that provides the `DjangoflowScrollableColumn` widget, allowing you to create a vertically scrollable column of widgets with ease.
</p>

---

## 🌟 Features

- **Vertical Scrolling**: Easily create scrollable columns with your choice of children widgets.
- **Customizable Layout**: Control the alignment and layout of the column.
- **Flexibility**: Use it as a part of your app's UI to display dynamic content.

## 📦 Installation

To add `djangoflow_scrollable_column` to your Flutter project, add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  djangoflow_scrollable_column: <latest_version>
```

Then, run:

```bash
flutter pub get
```

## 🚀 Quick Start

### 🌅 Using `DjangoflowScrollableColumn`

Simply import the package and use the `DjangoflowScrollableColumn` widget to create your scrollable column of widgets.

```dart
import 'package:djangoflow_scrollable_column/djangoflow_scrollable_column.dart';

DjangoflowScrollableColumn(
  children: [
    // Your widgets go here
  ],
)
```

### 🛠 Customization

You can customize the layout and alignment of your scrollable column by providing optional parameters to `DjangoflowScrollableColumn`.

```dart
DjangoflowScrollableColumn(
  children: [
    // Your widgets go here
  ],
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  verticalDirection: VerticalDirection.up,
  // Add more parameters as needed
)
```

## 📖 Example

Check out the `example` directory for a sample application that demonstrates how to use `DjangoflowScrollableColumn` in your Flutter project.

## 🤝 Contributing

We welcome contributions! Feel free to open an issue or submit a pull request if you have any improvements or find any bugs. You can find contribution guideline [here](../../README.md#contribution-guideline)

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
