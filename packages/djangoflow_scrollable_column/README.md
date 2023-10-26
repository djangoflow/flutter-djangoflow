# djangoflow_scrollable_column

A scrollable column widget for Flutter.

## Description

The project aims to provide a scrollable column widget for Flutter applications using the
`DjangoflowScrollableColumn` class. It allows scrolling a column widget with a fixed height and
variable content height.

## Installation

To install the project, follow these steps:

- Add the project dependency to your pubspec.yaml file:

```yaml
dependencies:
  djangoflow_scrollable_column: ^x.x.x
```

- Run flutter pub get to fetch the dependency.

## Usage

To use the project in your Flutter application, follow these steps:

```dart
import 'package:flutter/material.dart';
import 'package:djangoflow_scrollable_column/djangoflow_scrollable_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: DjangoflowScrollableColumn(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      );
}
```

## Contributing

Thank you for your interest in contributing to our project! We welcome contributions from the
community to help improve and enhance the project. Whether it's reporting bugs, suggesting new
features, or submitting code changes, your contributions are valuable to us.

Here are some guidelines to follow when contributing:

### Bug Reports:

- If you encounter a bug or issue, please submit a detailed bug report.
- Include steps to reproduce the issue, expected behavior, and actual behavior.
- Provide any relevant error messages or screenshots.
- You can submit bug reports through GH issues, please add [djangoflow_scrollable_column] as prefix for the
  issue title

### Feature Requests:

- If you have a feature request or enhancement suggestion, we would love to hear it.
- Clearly describe the feature you would like to see added and provide use cases or examples.
- Explain any technical considerations or requirements.
- You can submit feature requests through GH issues.

### Code Contributions:

If you want to contribute code changes or improvements, please follow these steps:

- Fork the repository and create a new branch for your changes.
- Make your code changes, ensuring adherence to coding standards and conventions.
- Write tests to cover your changes.
- Update the documentation if necessary.
- Submit a pull request with a clear description of your changes and their purpose.
- We will review your pull request and provide feedback as needed. Please be patient, as the review
  process may take some time.

### Documentation Contributions:

- Documentation improvements are highly appreciated.
- If you find any gaps, errors, or areas for improvement in the documentation, please let us know.
- You can make edits directly to the documentation files or submit a pull request with your changes.

### Code of Conduct:

- We adhere to a code of conduct to ensure a welcoming and inclusive community.
- We expect all contributors to follow the code of conduct and maintain a respectful environment.

### Contact Information:

If you have any questions or need assistance, you can reach out to
us [hello@apexive.com](mailto:hello@apexive.com).
We appreciate your interest and contributions to our project. Thank you for helping us make it
better!
