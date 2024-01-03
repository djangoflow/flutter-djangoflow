import 'package:firebase_messaging/firebase_messaging.dart';

abstract class DjangoflowFCMEvent {}

class DjangoflowFCMOnMessageReceived extends DjangoflowFCMEvent {
  DjangoflowFCMOnMessageReceived(this.remoteMessage,
      {this.remoteMessageOpenedApp,});
  final RemoteMessage remoteMessage;
  final bool? remoteMessageOpenedApp;
}

class DjangoflowFCMTokenRequested extends DjangoflowFCMEvent {}

class DjangoflowFCMOnTokenReceived extends DjangoflowFCMEvent {

  DjangoflowFCMOnTokenReceived(this.token);
  final String? token;
}

class DjangoflowFCMInitialMessageRequested extends DjangoflowFCMEvent {}

class DjangoflowFCMDeletePushToken extends DjangoflowFCMEvent {}
