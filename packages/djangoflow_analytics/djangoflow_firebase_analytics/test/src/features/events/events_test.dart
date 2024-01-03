import 'package:djangoflow_firebase_analytics/djangoflow_firebase_analytics.dart';
import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

import '../../../helpers/helpers.dart';

class TestFirebaseAnalyticsEvents implements FirebaseAnalyticsEvent {

  const TestFirebaseAnalyticsEvents({
    required this.eventkey,
    required this.eventParams,
  });
  final String eventkey;
  final Map<String, Object?> eventParams;
  @override
  String get key => eventkey;

  @override
  Map<String, Object?> get params => eventParams;
}

void main() {
  late MockFirebaseAnalytics mockFirebaseAnalytics;
  late FirebaseAnalyticEventSender eventSender;

  setUp(() {
    mockFirebaseAnalytics = MockFirebaseAnalytics();
    eventSender = FirebaseAnalyticEventSender(mockFirebaseAnalytics);
  });

  test('canHandle() should return true for TestFirebaseAnalyticsEvents', () {
    const event = TestFirebaseAnalyticsEvents(
      eventkey: 'testEvent',
      eventParams: {'testParam': 'testValue'},
    );
    expect(eventSender.canHandle(event), true);
  });

  test('perform() should call logEvent with correct value', () {
    const event = TestFirebaseAnalyticsEvents(
      eventkey: 'testEvent',
      eventParams: {'testParam': 'testValue'},
    );
    when(
      mockFirebaseAnalytics.logEvent(
        name: event.key,
        parameters: event.params,
      ),
    ).thenAnswer((_) => Future.value());
    eventSender.perform(event);
    verify(
      mockFirebaseAnalytics.logEvent(
        name: event.key,
        parameters: event.params,
      ),
    ).called(1);
  });

  test('perform() should not call logEvent un-trimmed values', () {
    final testGen = TestStringGenerator();
    final event = TestFirebaseAnalyticsEvents(
      eventkey: testGen.generateRandomString(kMaxEventKeyLength + 10),
      eventParams: {'testParam': 'testValue'},
    );
    when(
      mockFirebaseAnalytics.logEvent(
        name: event.key,
        parameters: event.params,
      ),
    ).thenAnswer((_) => Future.value());
    eventSender.perform(event);
    verifyNever(
      mockFirebaseAnalytics.logEvent(
        name: event.key,
        parameters: event.params,
      ),
    );
  });
}
