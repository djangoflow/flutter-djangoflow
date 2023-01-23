import 'package:djangoflow_firebase_analytics/djangoflow_firebase_analytics.dart';
import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockFirebaseAnalytics mockFirebaseAnalytics;
  late FirebaseUserPropertyRemover userPropertyRemover;

  setUp(() {
    mockFirebaseAnalytics = MockFirebaseAnalytics();
    userPropertyRemover = FirebaseUserPropertyRemover(mockFirebaseAnalytics);
  });

  test('canHandle() should return true for FirebaseRemovableUserProperty', () {
    final event = FirebaseRemovableUserProperty('email');
    expect(userPropertyRemover.canHandle(event), true);
  });

  test('perform() should call setUserId with null value', () {
    final event = FirebaseRemovableUserProperty(kUserIdKey);
    when(
      mockFirebaseAnalytics.setUserId(id: anyNamed('id')),
    ).thenAnswer((_) => Future.value());
    when(mockFirebaseAnalytics.setUserProperty(
            name: anyNamed('name'), value: anyNamed('value')))
        .thenAnswer((_) => Future.value());
    userPropertyRemover.perform(event);
    verify(
      mockFirebaseAnalytics.setUserId(id: null),
    ).called(1);
    verifyNever(
      mockFirebaseAnalytics.setUserProperty(
          name: anyNamed('name'), value: anyNamed('value')),
    );
  });

  test('perform() should call setUserProperty with null value for the key', () {
    final event = FirebaseRemovableUserProperty('email');

    when(
      mockFirebaseAnalytics.setUserProperty(
        name: anyNamed('name'),
        value: anyNamed('value'),
      ),
    ).thenAnswer((_) => Future.value());
    userPropertyRemover.perform(event);
    verify(
      mockFirebaseAnalytics.setUserProperty(name: 'email', value: null),
    ).called(1);
  });
}
