<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="Djangoflow Video Player Logo" width="200">
  <h1 align="center">🎥 Djangoflow Video Player for Flutter 🎥</h1>
</div>
<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_video_player">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_video_player.svg">
  </a>
</p>
<p align="center">
  A Flutter package that provides an easy way to integrate video_player package in Flutter apps, making video playback in your Flutter applications seamless and flexible.
</p>

## 🌟 Features

- **Customizable Video Playback**: Tailor the video player's appearance and behavior to fit your app's design.
- **Thumbnail Support**: Display customizable thumbnails before the video plays.
- **Adaptive Icons**: Choose icons for play/pause and volume controls.
- **Error Handling**: Provide custom widgets for handling video loading errors.
- **Flexible Configuration**: Adjust settings like blur radius for thumbnails and more.
- **Network Video Support**: Play videos from network sources with optional HTTP headers.
- **Closed Caption Support**: Includes support for closed caption files.
- **Video Player Options**: Customize various video player options like format hint.
- **Initialization Callback**: Optional callback for additional actions during video player initialization.

## 📦 Installation

To add `djangoflow_video_player` to your Flutter project, include it in your `pubspec.yaml` file:

```yaml
dependencies:
  djangoflow_video_player: <latest_version>
```

After adding the dependency, run the following command to fetch the package:

```bash
flutter pub get
```

## 🚀 Quick Start

### 🎬 Using VideoPlayerWidget

Import the package and use the VideoPlayerWidget to embed a video player in your UI.

```dart
import 'package:djangoflow_video_player/djangoflow_video_player.dart';

VideoPlayerWidget(
  url: 'https://www.example.com/video.mp4',
  // Additional optional parameters
)
```

### 🛠 Using VideoPlayerWidgetBuilder

For advanced customization, use VideoPlayerWidgetBuilder which provides more control over the video player's behavior and UI.

```dart
VideoPlayerWidgetBuilder(
  url: 'https://www.example.com/video.mp4',
  builder: (context, controller, isInitialized) {
    if (controller == null || !isInitialized) {
      return Center(child: CircularProgressIndicator());
    }
    // Implement your custom video player UI
  },
  // Additional optional parameters
)
```

This builder allows for extensive customization and control, making it ideal for more complex video player implementations.

### 🛠 Customization

Customize the video player by providing various optional parameters:

```dart
VideoPlayerWidget(
  url: 'https://www.example.com/video.mp4',
  thumbnailUrl: 'https://www.example.com/thumbnail.jpg',
  errorBuilder: (context, error) => CustomErrorWidget(),
  loadingIndicator: CustomLoadingIndicator(),
  thumbnailBuilder: (context, url) => CustomThumbnailWidget(url),
  blurRadius: 15.0,
  playIcon: Icons.play_arrow,
  pauseIcon: Icons.pause,
  volumeUpIcon: Icons.volume_up,
  volumeOffIcon: Icons.volume_off,
  // More customization options
)

```

## 🚧 Troubleshooting

Having SDK constraint mismatch can cause `UnimplemenetedError:init() has not been implemented` error. In that case make sure flutter app package or dart package that is using this package matches correct SDK constraint as the video_player package.

## 🤝 Contributing

[Contribution Guideline](https://github.com/djangoflow/flutter-djangoflow?tab=readme-ov-file#contribution-guideline)

## 📜 License

`djangoflow_video_player` is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
