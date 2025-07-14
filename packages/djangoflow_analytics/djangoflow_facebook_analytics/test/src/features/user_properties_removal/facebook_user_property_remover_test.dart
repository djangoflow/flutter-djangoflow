import 'package:djangoflow_facebook_analytics/djangoflow_facebook_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../advertise_tracking/facebook_advertise_tracking_updater_test.mocks.dart';

void main() {
  late MockFacebookAppEvents mockFacebookAppEvents;
  late FacebookUserPropertyRemover userPropertyRemover;

  setUp(() {
    mockFacebookAppEvents = MockFacebookAppEvents();
    userPropertyRemover = FacebookUserPropertyRemover(mockFacebookAppEvents);
  });

  test('canHandle() should return true for FacebookRemovableUserProperty', () {
    final event = FacebookRemovableUserProperty(true, true);
    expect(userPropertyRemover.canHandle(event), true);
  });

  test('performAction() should call clearUserID and clearUserData with correct value',
      () {
    final event = FacebookRemovableUserProperty(true, true);
    when(
      mockFacebookAppEvents.clearUserID(),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.clearUserID()).thenAnswer((_) => Future.value());
    userPropertyRemover.performAction(event);
    verify(
      mockFacebookAppEvents.clearUserID(),
    ).called(1);
    verify(
      mockFacebookAppEvents.clearUserData(),
    ).called(1);
  });

  test('performAction() should not call clearUserData when removeAllUserData = false',
      () {
    final event = FacebookRemovableUserProperty(true, false);
    when(
      mockFacebookAppEvents.clearUserID(),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.clearUserID()).thenAnswer((_) => Future.value());
    userPropertyRemover.performAction(event);
    verify(
      mockFacebookAppEvents.clearUserID(),
    ).called(1);

    verifyNever(
      mockFacebookAppEvents.clearUserData(),
    );
  });

  test('performAction() should not call clearUserData when removeUserId = false', () {
    final event = FacebookRemovableUserProperty(false, true);
    when(
      mockFacebookAppEvents.clearUserID(),
    ).thenAnswer((_) => Future.value());
    when(mockFacebookAppEvents.clearUserID()).thenAnswer((_) => Future.value());
    userPropertyRemover.performAction(event);
    verifyNever(
      mockFacebookAppEvents.clearUserID(),
    );

    verify(
      mockFacebookAppEvents.clearUserData(),
    ).called(1);
  });
}
