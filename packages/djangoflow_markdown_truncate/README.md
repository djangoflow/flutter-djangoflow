<div align="center">
  <img src="https://user-images.githubusercontent.com/116165418/238683908-ddaa2265-af04-4915-8f02-bae1bce43291.png" alt="DjangoFlow Package Logo" width="200">
  <h1 align="center">✂️ djangoflow_markdown_truncate ✂️</h1>
</div>

<p align="center">
  <a href="https://github.com/djangoflow/flutter-djangoflow/">
    <img alt="GitHub Repository" src="https://img.shields.io/badge/GitHub-Repository-blue.svg">
  </a>
  <a href="https://pub.dev/packages/djangoflow_markdown_truncate">
    <img alt="Pub Package" src="https://img.shields.io/pub/v/djangoflow_markdown_truncate.svg">
  </a>
</p>

<p align="center">
  A Flutter package to elegantly truncate Markdown content with support for character and line limits.
</p>

---

## 🌟 Features

- **Character-based Truncation**: Limit the content by the number of characters.
- **Line-based Truncation**: Restrict the content by the number of lines.
- **Read More Integration**: Append a "Read more" link when the content is truncated.
- **Style Preservation**: Maintain Markdown styling even after truncation.

## 📦 Installation

To add `djangoflow_markdown_truncate` to your Flutter project, add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  djangoflow_markdown_truncate: <latest_version>
```

Then, run:

```bash
flutter pub get
```

## 🚀 Quick Start

Here's how to use the package to truncate Markdown content in your app:

```dart
import 'package:djangoflow_markdown_truncate/djangoflow_markdown_truncate.dart';

DjangoflowMarkdownLineTruncate(
  data: """
  # Markdown Content
  This is an example of Markdown content that might be too long to display in its entirety.
  You can use this package to truncate it after a certain number of lines or characters.
  """,
  maxLines: 3,
  styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
  onReadMoreTapped: () {
    print("Read more tapped!");
  },
);
```

### 🛠 Parameters

- `data`: The Markdown content to be truncated.
- `maxLines`: Maximum number of lines to display (for line-based truncation).
- `maxCharacters`: Maximum number of characters to display (for character-based truncation).
- `styleSheet`: Custom styles for the Markdown content.
- `onReadMoreTapped`: Callback triggered when the "Read more" link is tapped.

## ⚠️ Limitations

- **Complex Layouts**: The package works best with simple Markdown content. Complex layouts, such as deeply nested elements or mixed content (images, tables, etc.), may not truncate as expected.
- **Style Preservation**: While styles are generally preserved, certain edge cases might cause style inconsistencies, especially when truncating very complex styled content.
- **Read More Link Placement**: The "Read more" link may sometimes require additional adjustments, especially in cases where the content is very close to the truncation limit. The link may not always align perfectly with the truncated content.
- **Dynamic Content**: If the content dynamically changes after rendering, the truncation may not automatically re-apply. Manual re-triggering might be necessary.
- **Performance**: Truncating very large Markdown content can be computationally expensive, potentially affecting performance in resource-constrained environments.

## 📖 Example App

Explore the `example` directory for a complete example demonstrating how to use `djangoflow_markdown_truncate` in a Flutter project.

## 🤝 Contributing

We welcome contributions! If you have any improvements, feature requests, or find any bugs, feel free to open an issue or submit a pull request.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
