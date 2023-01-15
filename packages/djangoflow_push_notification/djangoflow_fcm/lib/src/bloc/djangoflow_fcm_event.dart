import 'package:firebase_messaging/firebase_messaging.dart';

abstract class DjangoflowFCMEvent {}

class DjangoflowFCMOnMessageReceived extends DjangoflowFCMEvent {
  final RemoteMessage remoteMessage;

  DjangoflowFCMOnMessageReceived(this.remoteMessage);
}

class DjangoflowFCMTokenRequested extends DjangoflowFCMEvent {}

class DjangoflowFCMOnTokenReceived extends DjangoflowFCMEvent {
  final String? token;

  DjangoflowFCMOnTokenReceived(this.token);
}

class DjangoflowFCMIntialMessageRequested extends DjangoflowFCMEvent {}
