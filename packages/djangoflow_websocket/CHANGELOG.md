## 0.1.0+5

 - **REFACTOR**: format the codebase. ([fc078388](https://github.com/djangoflow/flutter-djangoflow/commit/fc0783887eb7881d079c7381299248cea2fdf63a))
 - **REFACTOR**: resolve linter warnings. ([9ab6b6e5](https://github.com/djangoflow/flutter-djangoflow/commit/9ab6b6e5e700de585393939f3afd1cb2527f9d39))

## 0.1.0+4

 - **REFACTOR**: use latest dependency. ([7ffec4dc](https://github.com/djangoflow/flutter-djangoflow/commit/7ffec4dcd4b52bebde4fa37706649556ae7d6394))
 - **REFACTOR**: upgrade to flutter_lint 3.0.1. ([ebfc2663](https://github.com/djangoflow/flutter-djangoflow/commit/ebfc266338959dece73dd2b2198277ef0d225bb2))

## 0.1.0+3

 - Update a dependency to the latest release.

## 0.1.0+2

 - **REFACTOR**(websocket): remove CubitMaybeEmit in favor of SafeEmitMixin. ([289b5e8b](https://github.com/djangoflow/flutter-djangoflow/commit/289b5e8b30034757f9fd1e71a6985c8c0146d0db))

## 0.1.0+1

 - **REFACTOR**(websocket): move all files under src folder. ([837c697d](https://github.com/djangoflow/flutter-djangoflow/commit/837c697de1a055eab1e49307692ef4330de4e3d9))
 - **REFACTOR**(websocket): delete .iml file. ([f41470d0](https://github.com/djangoflow/flutter-djangoflow/commit/f41470d0380e8aefb24cdd6fde32bfc8d13e052c))
 - **REFACTOR**(websocket): add interface and config to make it more flexible. ([3589b916](https://github.com/djangoflow/flutter-djangoflow/commit/3589b916752c511aa29c8e4eedf353d43a81c99c))
 - **FIX**(websocket): fix wrong generated constructor name. ([931e10fb](https://github.com/djangoflow/flutter-djangoflow/commit/931e10fb40971711d69be91ba761217a4a0079bc))
 - **DOCS**(websocket): update CHANGELOG. ([f47278cc](https://github.com/djangoflow/flutter-djangoflow/commit/f47278cced0e8b84d2d17fdb94b78043aafb10cb))
 - **DOCS**(websocket): update README. ([a47975b5](https://github.com/djangoflow/flutter-djangoflow/commit/a47975b5927501bf4eddfb6fdf8c1c8f60e6e879))

## 0.1.0

- Updated Dart SDK constraints for dart 3
- Added `DjangoflowWebsocketCubitBase` interface and now `DjangoflowWebsocketCubit` extends from it. And multiple cubit can be created for different `Uri` or websocket clients.
- Added `DjangoflowWebsocketConfig` for more flexibility
- Restrucutered file organization

## 0.0.1

We are excited to announce the initial release of djangoflow_websocket!

#### Features

- WebSocket Connection Management: The `DjangoflowWebsocketCubit` class provides a convenient way to establish and manage WebSocket connections to a server. It handles connection establishment, closure, and automatic reconnection in case of connection loss.

- Connection State Monitoring: The `DjangoflowWebsocketCubit` emits `DjangoflowWebsocketState` objects, allowing you to monitor the connection state. This includes messages such as "Connecting," "Connected," and "Disconnected," providing real-time feedback on the connection status.

- Message Handling: The `DjangoflowWebsocketCubit` class receives WebSocket messages and emits them as part of the `DjangoflowWebsocketState`. You can easily handle and process these messages in your application logic.

- Bloc Listener for Message Notifications: The `DjangoflowWebsocketBlocListener` simplifies the process of listening to new WebSocket messages emitted by the `DjangoflowWebsocketCubit`. It executes a callback whenever a new message is received, making it easier to handle messages in the UI.
