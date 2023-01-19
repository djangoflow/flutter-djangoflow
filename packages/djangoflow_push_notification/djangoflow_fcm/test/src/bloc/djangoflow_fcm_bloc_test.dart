import 'package:bloc_test/bloc_test.dart';
import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<DjangoflowFCMRepository>()])
import 'djangoflow_fcm_bloc_test.mocks.dart';

void main() {
  group('DjangoflowFCMBloc', () {
    const remoteMessage = RemoteMessage();
    const token = 'token';
    final repository = MockDjangoflowFCMRepository();

    const expectedMessageState = DjangoflowFCMState(
      remoteMessage: remoteMessage,
    );

    const expectedTokenState = DjangoflowFCMState(
      token: token,
    );

    blocTest(
      'emits [expected state] when DjangoflowFCMOnMessageReceived is added',
      build: () {
        when(repository.getForegroundRemoteMessageStream())
            .thenAnswer((_) => Stream.fromIterable([]));
        when(repository.getBackgroundRemoteMessageTappedStream())
            .thenAnswer((_) => Stream.fromIterable([]));
        return DjangoflowFCMBloc(repository);
      },
      act: (bloc) => bloc.add(DjangoflowFCMOnMessageReceived(remoteMessage)),
      expect: () => [expectedMessageState],
    );

    blocTest(
      'emits [expected state] when DjangoflowFCMOnTokenReceived is added',
      build: () {
        when(repository.isSupported()).thenAnswer((_) => Future.value(true));
        when(repository.requestNotificationPermission())
            .thenAnswer((_) => Future.value(const NotificationSettings(
                  alert: AppleNotificationSetting.enabled,
                  badge: AppleNotificationSetting.enabled,
                  sound: AppleNotificationSetting.enabled,
                  announcement: AppleNotificationSetting.enabled,
                  authorizationStatus: AuthorizationStatus.authorized,
                  carPlay: AppleNotificationSetting.enabled,
                  criticalAlert: AppleNotificationSetting.enabled,
                  lockScreen: AppleNotificationSetting.enabled,
                  notificationCenter: AppleNotificationSetting.enabled,
                  showPreviews: AppleShowPreviewSetting.always,
                  timeSensitive: AppleNotificationSetting.enabled,
                )));
        when(repository.getToken()).thenAnswer((_) => Future.value(token));
        return DjangoflowFCMBloc(repository);
      },
      act: (bloc) => bloc.add(DjangoflowFCMTokenRequested()),
      expect: () => [expectedTokenState],
    );
  });
}
