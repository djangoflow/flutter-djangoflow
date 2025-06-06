// Mocks generated by Mockito 5.4.6 from annotations
// in djangoflow_fcm/test/src/data/djangoflow_fcm_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:firebase_core/firebase_core.dart' as _i2;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:firebase_messaging_platform_interface/firebase_messaging_platform_interface.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseApp_0 extends _i1.SmartFake implements _i2.FirebaseApp {
  _FakeFirebaseApp_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNotificationSettings_1 extends _i1.SmartFake
    implements _i3.NotificationSettings {
  _FakeNotificationSettings_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FirebaseMessaging].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseMessaging extends _i1.Mock implements _i4.FirebaseMessaging {
  @override
  _i2.FirebaseApp get app => (super.noSuchMethod(
        Invocation.getter(#app),
        returnValue: _FakeFirebaseApp_0(
          this,
          Invocation.getter(#app),
        ),
        returnValueForMissingStub: _FakeFirebaseApp_0(
          this,
          Invocation.getter(#app),
        ),
      ) as _i2.FirebaseApp);

  @override
  bool get isAutoInitEnabled => (super.noSuchMethod(
        Invocation.getter(#isAutoInitEnabled),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i5.Stream<String> get onTokenRefresh => (super.noSuchMethod(
        Invocation.getter(#onTokenRefresh),
        returnValue: _i5.Stream<String>.empty(),
        returnValueForMissingStub: _i5.Stream<String>.empty(),
      ) as _i5.Stream<String>);

  @override
  set app(_i2.FirebaseApp? _app) => super.noSuchMethod(
        Invocation.setter(
          #app,
          _app,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<dynamic, dynamic> get pluginConstants => (super.noSuchMethod(
        Invocation.getter(#pluginConstants),
        returnValue: <dynamic, dynamic>{},
        returnValueForMissingStub: <dynamic, dynamic>{},
      ) as Map<dynamic, dynamic>);

  @override
  _i5.Future<_i3.RemoteMessage?> getInitialMessage() => (super.noSuchMethod(
        Invocation.method(
          #getInitialMessage,
          [],
        ),
        returnValue: _i5.Future<_i3.RemoteMessage?>.value(),
        returnValueForMissingStub: _i5.Future<_i3.RemoteMessage?>.value(),
      ) as _i5.Future<_i3.RemoteMessage?>);

  @override
  _i5.Future<void> deleteToken() => (super.noSuchMethod(
        Invocation.method(
          #deleteToken,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<String?> getAPNSToken() => (super.noSuchMethod(
        Invocation.method(
          #getAPNSToken,
          [],
        ),
        returnValue: _i5.Future<String?>.value(),
        returnValueForMissingStub: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<String?> getToken({String? vapidKey}) => (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [],
          {#vapidKey: vapidKey},
        ),
        returnValue: _i5.Future<String?>.value(),
        returnValueForMissingStub: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<bool> isSupported() => (super.noSuchMethod(
        Invocation.method(
          #isSupported,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<_i3.NotificationSettings> getNotificationSettings() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNotificationSettings,
          [],
        ),
        returnValue: _i5.Future<_i3.NotificationSettings>.value(
            _FakeNotificationSettings_1(
          this,
          Invocation.method(
            #getNotificationSettings,
            [],
          ),
        )),
        returnValueForMissingStub: _i5.Future<_i3.NotificationSettings>.value(
            _FakeNotificationSettings_1(
          this,
          Invocation.method(
            #getNotificationSettings,
            [],
          ),
        )),
      ) as _i5.Future<_i3.NotificationSettings>);

  @override
  _i5.Future<_i3.NotificationSettings> requestPermission({
    bool? alert = true,
    bool? announcement = false,
    bool? badge = true,
    bool? carPlay = false,
    bool? criticalAlert = false,
    bool? provisional = false,
    bool? sound = true,
    bool? providesAppNotificationSettings = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestPermission,
          [],
          {
            #alert: alert,
            #announcement: announcement,
            #badge: badge,
            #carPlay: carPlay,
            #criticalAlert: criticalAlert,
            #provisional: provisional,
            #sound: sound,
            #providesAppNotificationSettings: providesAppNotificationSettings,
          },
        ),
        returnValue: _i5.Future<_i3.NotificationSettings>.value(
            _FakeNotificationSettings_1(
          this,
          Invocation.method(
            #requestPermission,
            [],
            {
              #alert: alert,
              #announcement: announcement,
              #badge: badge,
              #carPlay: carPlay,
              #criticalAlert: criticalAlert,
              #provisional: provisional,
              #sound: sound,
              #providesAppNotificationSettings: providesAppNotificationSettings,
            },
          ),
        )),
        returnValueForMissingStub: _i5.Future<_i3.NotificationSettings>.value(
            _FakeNotificationSettings_1(
          this,
          Invocation.method(
            #requestPermission,
            [],
            {
              #alert: alert,
              #announcement: announcement,
              #badge: badge,
              #carPlay: carPlay,
              #criticalAlert: criticalAlert,
              #provisional: provisional,
              #sound: sound,
              #providesAppNotificationSettings: providesAppNotificationSettings,
            },
          ),
        )),
      ) as _i5.Future<_i3.NotificationSettings>);

  @override
  _i5.Future<void> sendMessage({
    String? to,
    Map<String, String>? data,
    String? collapseKey,
    String? messageId,
    String? messageType,
    int? ttl,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendMessage,
          [],
          {
            #to: to,
            #data: data,
            #collapseKey: collapseKey,
            #messageId: messageId,
            #messageType: messageType,
            #ttl: ttl,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> setAutoInitEnabled(bool? enabled) => (super.noSuchMethod(
        Invocation.method(
          #setAutoInitEnabled,
          [enabled],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> setDeliveryMetricsExportToBigQuery(bool? enabled) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDeliveryMetricsExportToBigQuery,
          [enabled],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> setForegroundNotificationPresentationOptions({
    bool? alert = false,
    bool? badge = false,
    bool? sound = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setForegroundNotificationPresentationOptions,
          [],
          {
            #alert: alert,
            #badge: badge,
            #sound: sound,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> subscribeToTopic(String? topic) => (super.noSuchMethod(
        Invocation.method(
          #subscribeToTopic,
          [topic],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> unsubscribeFromTopic(String? topic) => (super.noSuchMethod(
        Invocation.method(
          #unsubscribeFromTopic,
          [topic],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
