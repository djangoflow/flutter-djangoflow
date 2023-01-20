import 'package:djangoflow_facebook_analytics/djangoflow_facebook_analytics.dart';
import 'package:djangoflow_facebook_analytics/src/configurations/constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../advertise_tracking/facebook_advertise_tracking_updater_test.mocks.dart';

void main() {
  late MockFacebookAppEvents mockFacebookAppEvents;
  late FacebookUserPropertyUpdater userPropertyUpdater;

  setUp(() {
    mockFacebookAppEvents = MockFacebookAppEvents();
    userPropertyUpdater = FacebookUserPropertyUpdater(mockFacebookAppEvents);
  });

  test('canHandle() should return true for FacebookRemovableUserProperty', () {
    final event = FacebookUpdatableUserProperty('key', 'value');
    expect(userPropertyUpdater.canHandle(event), true);
  });

  test('perform() should call setUserID with correct value', () {
    final event = FacebookUpdatableUserProperty(kUserIdKey, '1');
    when(
      mockFacebookAppEvents.setUserID(event.value),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.setUserData()).thenAnswer((_) => Future.value());
    userPropertyUpdater.perform(event);
    verify(
      mockFacebookAppEvents.setUserID(event.value),
    ).called(1);

    verifyNever(mockFacebookAppEvents.setUserData());
  });

  test('perform() should not call setUserID and update email', () {
    final event = FacebookUpdatableUserProperty(kEmailKey, 'email@example.com');
    when(
      mockFacebookAppEvents.setUserID(null),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.setUserData(
      email: event.value,
    )).thenAnswer((_) => Future.value());
    userPropertyUpdater.perform(event);
    verify(
      mockFacebookAppEvents.setUserData(email: event.value),
    ).called(1);

    verifyNever(mockFacebookAppEvents.setUserID(any));
  });

  test('perform() should not call setUserID and update firstName', () {
    final event = FacebookUpdatableUserProperty(kFirstNameKey, 'John');
    when(
      mockFacebookAppEvents.setUserID(null),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.setUserData(
      firstName: event.value,
    )).thenAnswer((_) => Future.value());
    userPropertyUpdater.perform(event);
    verify(
      mockFacebookAppEvents.setUserData(firstName: event.value),
    ).called(1);

    verifyNever(mockFacebookAppEvents.setUserID(any));
  });

  test('perform() should not call setUserID and update lastName', () {
    final event = FacebookUpdatableUserProperty(kLastNameKey, 'Doe');
    when(
      mockFacebookAppEvents.setUserID(null),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.setUserData(
      lastName: event.value,
    )).thenAnswer((_) => Future.value());
    userPropertyUpdater.perform(event);
    verify(
      mockFacebookAppEvents.setUserData(lastName: event.value),
    ).called(1);

    verifyNever(mockFacebookAppEvents.setUserID(any));
  });
}
