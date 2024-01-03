import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/notification_settings.dart';

@GenerateNiceMocks([MockSpec<FirebaseMessaging>()])
import 'djangoflow_fcm_repository_test.mocks.dart';

void main() {
  late MockFirebaseMessaging mockMessaging;
  late DjangoflowFCMRepository repository;

  setUp(() {
    mockMessaging = MockFirebaseMessaging();
    repository = DjangoflowFCMRepository(mockMessaging);
  });

  group('DjangoflowFCMRepository', () {
    test('getForegroundRemoteMessageStream returns FirebaseMessaging.onMessage',
        () {
      expect(repository.getForegroundRemoteMessageStream(),
          FirebaseMessaging.onMessage,);
    });

    test(
        'getInitialRemoteMessage calls FirebaseMessaging.instance.getInitialMessage',
        () async {
      when(mockMessaging.getInitialMessage())
          .thenAnswer((_) => Future.value(const RemoteMessage()));
      final result = await repository.getInitialRemoteMessage();
      expect(result, isA<RemoteMessage>());
    });

    test(
        'getBackgroundRemoteMessageTappedStream returns FirebaseMessaging.onMessageOpenedApp',
        () {
      expect(repository.getBackgroundRemoteMessageTappedStream(),
          FirebaseMessaging.onMessageOpenedApp,);
    });

    test('requestNotificationPermission calls _messaging.requestPermission',
        () async {
      when(mockMessaging.requestPermission(
              alert: true,
              announcement: false,
              badge: true,
              carPlay: false,
              criticalAlert: false,
              provisional: false,
              sound: true,),)
          .thenAnswer((_) => Future.value(testNotificationSettings));
      final result = await repository.requestNotificationPermission();
      expect(result, isA<NotificationSettings>());
    });

    test('getToken calls _messaging.getToken', () async {
      when(mockMessaging.getToken(vapidKey: null))
          .thenAnswer((_) => Future.value('123'));
      final result = await repository.getToken();
      expect(result, '123');
    });

    test('getTokenUpdateStream returns _messaging.onTokenRefresh', () {
      expect(repository.getTokenUpdateStream(), isA<Stream<String>>());
    });

    test('deleteToken calls _messaging.deleteToken', () async {
      await repository.deleteToken();
      verify(mockMessaging.deleteToken());
    });

    test('isSupported calls _messaging.isSupported', () async {
      when(mockMessaging.isSupported()).thenAnswer((_) => Future.value(true));
      final result = await repository.isSupported();
      expect(result, true);
    });
  });
}
