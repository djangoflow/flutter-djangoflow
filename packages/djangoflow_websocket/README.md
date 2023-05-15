# djangoflow_websocket

The project offers a set of classes and utilities to simplify WebSocket communication in Flutter applications. The core component is the DjangoflowWebsocketCubit, which manages the WebSocket connection, emits DjangoflowWebsocketState objects to represent the WebSocket state, and provides methods to connect and disconnect from the server. It handles automatic reconnection in case of connection failures.

The DjangoflowWebsocketBlocListener class, extending BlocListener, simplifies listening to new WebSocket messages by executing a callback whenever a new message is received.

## Description

The project aims to provide a seamless integration of WebSocket functionality in a Flutter application using the `DjangoflowWebsocketCubit` class. It allows connecting to a WebSocket server, subscribing to messages, handling reconnections, and managing the WebSocket state.

## Installation

To install the project, follow these steps:

- Add the project dependency to your pubspec.yaml file:

```yaml
dependencies:
djangoflow_websocket: ^x.x.x
```

- Run flutter pub get to fetch the dependency.

## Usage

To use the project in your Flutter application, follow these steps:

- Import the necessary classes:

```dart
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:djangoflow_websocket/blocs/djangoflow_websocket_cubit/djangoflow_websocket_cubit.dart';
```

- Create an instance of the DjangoflowWebsocketCubit:
  ```dart
  final websocketCubit = DjangoflowWebsocketCubit();
  ```
- Wrap your application with a BlocProvider to make the websocketCubit available throughout the app:

  ```dart
  runApp(
  BlocProvider<DjangoflowWebsocketCubit>.value(
  value: websocketCubit,
  child: MyApp(),
    ),
  );
  ```

  - Use BlocBuilder to display the connection status:

  ```dart
  BlocBuilder<DjangoflowWebsocketCubit, DjangoflowWebsocketState>(
  builder: (context, state) {
        return Text(state.connectionStateMessage);
    },
  ),
  ```

  - Use DjangoflowWebsocketBlocListener to listen to new WebSocket messages:

  ```dart
  DjangoflowWebsocketBlocListener(
  bloc: websocketCubit,
  listener: (context, state) {
    if (state.message != null) {
        // Handle new message received
        print('New message: ${state.message}');
        }
    },
    child: Container(),
  ),
  ```

  - Connect to the WebSocket server:

  ```dart
  final uri = Uri.parse('wss://example.com');
  websocketCubit.connectToUri(uri);
  ```

  - Disconnect from the WebSocket server when no longer needed:

  ```dart
  websocketCubit.disconnect();
  ```

## API Reference

### DjangoflowWebsocketCubit

#### **connectToUri(Uri uri)**

Connects to a WebSocket server at the specified uri. Emits connection state messages using the DjangoflowWebsocketState class.

#### **disconnect()**

Disconnects from the WebSocket server. Closes the channel sink and cancels the subscription.

#### **DjangoflowWebsocketState**

An immutable class that represents the state of the WebSocket connection. Includes properties like connectionStateMessage and message.

#### **DjangoflowWebsocketBlocListener**

A widget that listens to state changes from the DjangoflowWebsocketCubit and executes a callback when a new message is received. It extends BlocListener<DjangoflowWebsocketCubit, DjangoflowWebsocketState>.

## Contributing

Thank you for your interest in contributing to our project! We welcome contributions from the community to help improve and enhance the project. Whether it's reporting bugs, suggesting new features, or submitting code changes, your contributions are valuable to us.

Here are some guidelines to follow when contributing:

### Bug Reports:

- If you encounter a bug or issue, please submit a detailed bug report.
- Include steps to reproduce the issue, expected behavior, and actual behavior.
- Provide any relevant error messages or screenshots.
- You can submit bug reports through GH issues, please add [djangoflow_websocket] as prefix for the issue title

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
- We will review your pull request and provide feedback as needed. Please be patient, as the review process may take some time.

### Documentation Contributions:

- Documentation improvements are highly appreciated.
- If you find any gaps, errors, or areas for improvement in the documentation, please let us know.
- You can make edits directly to the documentation files or submit a pull request with your changes.

### Code of Conduct:

- We adhere to a code of conduct to ensure a welcoming and inclusive community.
- We expect all contributors to follow the code of conduct and maintain a respectful environment.

### Contact Information:

If you have any questions or need assistance, you can reach out to us [hello@apexive.com](mailto:hello@apexive.com).
We appreciate your interest and contributions to our project. Thank you for helping us make it better!
