import 'dart:async';

import 'package:djangoflow_fcm/src/data/djangoflow_fcm_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'djangoflow_fcm_event.dart';
import 'djangoflow_fcm_state.dart';

export 'djangoflow_fcm_event.dart';
export 'djangoflow_fcm_state.dart';

class DjangoflowFCMBloc extends Bloc<DjangoflowFCMEvent, DjangoflowFCMState> {
  final DjangoflowFCMRepository repository;

  DjangoflowFCMBloc(this.repository) : super(const DjangoflowFCMState()) {
    on<DjangoflowFCMOnMessageReceived>(_onMessageReceived);
    on<DjangoflowFCMOnTokenReceived>(_onTokenReceived);
    on<DjangoflowFCMTokenRequested>(_getToken);
    on<DjangoflowFCMInitialMessageRequested>(_getIntiailMessage);
    on<DjangoflowFCMDeletePushToken>(_deletePushToken);

    _foregroundRemoteMessageSubscription =
        repository.getForegroundRemoteMessageStream().listen(_onMessage);

    _backroundRemoteMessageTappedSubscription =
        repository.getBackgroundRemoteMessageTappedStream().listen(
              (event) => _onMessage(
                event,
                remoteMessageOpenedApp: true,
              ),
            );
  }

  late StreamSubscription<RemoteMessage> _foregroundRemoteMessageSubscription;
  late StreamSubscription<RemoteMessage>
      _backroundRemoteMessageTappedSubscription;

  void _onMessageReceived(DjangoflowFCMOnMessageReceived event,
          Emitter<DjangoflowFCMState> emit) =>
      emit(
        state.copyWith(
          remoteMessage: event.remoteMessage,
          remoteMessageOpenedApp: event.remoteMessageOpenedApp,
        ),
      );

  void _onTokenReceived(DjangoflowFCMOnTokenReceived event,
          Emitter<DjangoflowFCMState> emit) =>
      emit(
        state.copyWith(
          token: event.token,
          notificationAuthorizationStatus: AuthorizationStatus.authorized,
        ),
      );

  Future<void> _getToken(DjangoflowFCMTokenRequested event,
      Emitter<DjangoflowFCMState> emit) async {
    final isSupported = await repository.isSupported();
    if (isSupported) {
      final permission = await repository.requestNotificationPermission();
      if (permission.authorizationStatus == AuthorizationStatus.authorized) {
        // https://github.com/firebase/flutterfire/issues/11798#issuecomment-1826360250
        // Remove it when https://github.com/firebase/flutterfire/issues/11954
        // https://github.com/firebase/flutterfire/issues/11798 are fixed
        if (kIsWeb) {
          await repository.deleteToken();
        }
        final token = await repository.getToken();
        add(DjangoflowFCMOnTokenReceived(token));
      } else {
        emit(
          state.copyWith(
            notificationAuthorizationStatus: permission.authorizationStatus,
          ),
        );
      }
    }
  }

  Future<void> _getIntiailMessage(DjangoflowFCMInitialMessageRequested event,
      Emitter<DjangoflowFCMState> emit) async {
    final initialMessage = await repository.getInitialRemoteMessage();
    if (initialMessage != null) {
      add(DjangoflowFCMOnMessageReceived(
        initialMessage,
        remoteMessageOpenedApp: true,
      ));
    }
  }

  void _onMessage(RemoteMessage remoteMessage,
          {bool? remoteMessageOpenedApp}) =>
      add(DjangoflowFCMOnMessageReceived(
        remoteMessage,
        remoteMessageOpenedApp: remoteMessageOpenedApp,
      ));

  Future<void> _deletePushToken(DjangoflowFCMDeletePushToken event,
      Emitter<DjangoflowFCMState> emit) async {
    if (await repository.isSupported()) {
      final permission = await repository.requestNotificationPermission();
      if (permission.authorizationStatus == AuthorizationStatus.authorized) {
        await repository.deleteToken();
        emit(
          state.copyWith(
            token: null,
          ),
        );
      }
    }
  }

  @override
  Future<void> close() async {
    _foregroundRemoteMessageSubscription.cancel();
    _backroundRemoteMessageTappedSubscription.cancel();
    super.close();
  }
}
