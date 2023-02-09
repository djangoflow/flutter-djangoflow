import 'package:firebase_messaging/firebase_messaging.dart';

abstract class DjangoflowFCMEvent {}

class DjangoflowFCMOnMessageReceived extends DjangoflowFCMEvent {
  final RemoteMessage remoteMessage;
  final bool? remoteMessageOpenedApp;
  DjangoflowFCMOnMessageReceived(this.remoteMessage,
      {this.remoteMessageOpenedApp});
}

class DjangoflowFCMTokenRequested extends DjangoflowFCMEvent {}

class DjangoflowFCMOnTokenReceived extends DjangoflowFCMEvent {
  final String? token;

  DjangoflowFCMOnTokenReceived(this.token);
}

class DjangoflowFCMInitialMessageRequested extends DjangoflowFCMEvent {}

class DjangoflowFCMDeletePushToken extends DjangoflowFCMEvent {}
