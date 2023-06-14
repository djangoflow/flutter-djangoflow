import 'package:bloc_test/bloc_test.dart';
import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/notification_settings.dart';
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
      notificationAuthorizationStatus: AuthorizationStatus.authorized,
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
            .thenAnswer((_) => Future.value(testNotificationSettings));
        when(repository.getToken()).thenAnswer((_) => Future.value(token));
        return DjangoflowFCMBloc(repository);
      },
      act: (bloc) => bloc.add(DjangoflowFCMTokenRequested()),
      expect: () => [expectedTokenState],
    );
  });
}
