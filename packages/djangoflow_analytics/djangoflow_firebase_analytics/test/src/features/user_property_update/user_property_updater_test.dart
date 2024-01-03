import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:djangoflow_firebase_analytics/src/feauteres/user_properties_update/user_properties_update.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockFirebaseAnalytics mockFirebaseAnalytics;
  late FirebaseUserPropertyUpdater userPropertyUpdater;

  setUp(() {
    mockFirebaseAnalytics = MockFirebaseAnalytics();
    userPropertyUpdater = FirebaseUserPropertyUpdater(mockFirebaseAnalytics);
  });

  test('canHandle() should return true for FirebaseRemovableUserProperty', () {
    final event = FirebaseUpdatableUserProperty('key', 'value');
    expect(userPropertyUpdater.canHandle(event), true);
  });

  test('perform() should call setUserId with correct value', () {
    final event = FirebaseUpdatableUserProperty(kUserIdKey, '1');
    when(
      mockFirebaseAnalytics.setUserId(id: anyNamed('id')),
    ).thenAnswer((_) => Future.value());
    when(
      mockFirebaseAnalytics.setUserProperty(
          name: anyNamed('name'), value: anyNamed('value'),),
    ).thenAnswer((_) => Future.value());

    userPropertyUpdater.perform(event);
    verify(
      mockFirebaseAnalytics.setUserId(id: event.value),
    ).called(1);

    verifyNever(mockFirebaseAnalytics.setUserProperty(
        name: anyNamed('name'), value: anyNamed('value'),),);
  });

  test('perform() should not call setUserId and update email', () {
    final event = FirebaseUpdatableUserProperty('email', 'email@example.com');
    when(
      mockFirebaseAnalytics.setUserId(id: anyNamed('id')),
    ).thenAnswer((_) => Future.value());
    when(mockFirebaseAnalytics.setUserProperty(
            name: anyNamed('name'), value: anyNamed('value'),),)
        .thenAnswer((_) => Future.value());
    userPropertyUpdater.perform(event);
    verify(
      mockFirebaseAnalytics.setUserProperty(
          name: event.key, value: event.value,),
    ).called(1);

    verifyNever(mockFirebaseAnalytics.setUserId(id: anyNamed('id')));
  });
}
