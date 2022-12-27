import 'package:firebase_messaging/firebase_messaging.dart';

/// Call back to notify about a message received/tapped
typedef RemoteMessageCallback = void Function(RemoteMessage);

/// Call back to notify about a token init/refresh
typedef FCMTokenCallback = void Function(String?);

/// Used to provide error reporting
typedef ErrorCallback = void Function(Object error);
