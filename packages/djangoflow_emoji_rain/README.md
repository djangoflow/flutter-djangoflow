<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Package Logo" width="200">
  <h1 align="center">🌧️ djangoflow_emoji_rain 🌧️</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_emoji_rain">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_emoji_rain.svg">
  </a>
</p>

<p align="center">
  A Flutter package for creating a delightful rain of emojis on your screen.
</p>

---

## 🌟 Features

- **Customizable Emoji**: Choose any emoji you like!
- **Adjustable Raindrops**: Control the number of raindrops.
- **Speed Control**: Adjust the speed of the falling raindrops.
- **Rain Stop Callback**: Get notified when the rain stops.

## 📦 Installation

To add `djangoflow_emoji_rain` to your Flutter project, add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  djangoflow_emoji_rain: <latest_version>
```

Then, run:

```bash
flutter pub get
```

## 🚀 Quick Start

Here's a simple example to sprinkle some emoji rain into your app:

```dart
import 'package:djangoflow_emoji_rain/rain.dart';

Rain(
  emojiList: [
    RainDropEmoji(emoji: '💧', emojiSize: 50),
    RainDropEmoji(emoji: '💦', emojiSize: 30),
    RainDropEmoji(emoji: "\$", emojiSize: 40, emojiColor: Colors.green),
    RainDropEmoji(emoji: '💦', emojiSize: 20)
  ],
  numberOfRainDrops: 50,
  fallSpeedFactor: 1.0,
  onRainStopped: () {
    print("The rain has stopped!");
  },
);
```

### 🛠 Parameters

- `emojiList`: The list emoji to use for the raindrops.
- `numberOfRainDrops`: Number of raindrops on the screen.
- `fallSpeedFactor`: Speed multiplier for the falling raindrops.
- `onRainStopped`: Callback triggered when the rain stops.

## 📖 Example App

Check out the `example` directory for a complete example app demonstrating the package's capabilities.

## 🤝 Contributing

We welcome contributions! Feel free to open an issue or submit a pull request if you have any improvements or find any bugs.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
