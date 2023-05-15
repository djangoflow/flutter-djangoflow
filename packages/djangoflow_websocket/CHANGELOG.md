## 0.0.1

We are excited to announce the initial release of djangoflow_websocket!

#### Features

- WebSocket Connection Management: The `DjangoflowWebsocketCubit` class provides a convenient way to establish and manage WebSocket connections to a server. It handles connection establishment, closure, and automatic reconnection in case of connection loss.

- Connection State Monitoring: The `DjangoflowWebsocketCubit` emits `DjangoflowWebsocketState` objects, allowing you to monitor the connection state. This includes messages such as "Connecting," "Connected," and "Disconnected," providing real-time feedback on the connection status.

- Message Handling: The `DjangoflowWebsocketCubit` class receives WebSocket messages and emits them as part of the `DjangoflowWebsocketState`. You can easily handle and process these messages in your application logic.

- Bloc Listener for Message Notifications: The `DjangoflowWebsocketBlocListener` simplifies the process of listening to new WebSocket messages emitted by the `DjangoflowWebsocketCubit`. It executes a callback whenever a new message is received, making it easier to handle messages in the UI.
