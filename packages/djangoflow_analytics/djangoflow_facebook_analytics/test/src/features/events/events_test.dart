import 'package:djangoflow_facebook_analytics/djangoflow_facebook_analytics.dart';
import 'package:djangoflow_facebook_analytics/src/configurations/constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_string_generator.dart';
import '../advertise_tracking/facebook_advertise_tracking_updater_test.mocks.dart';

class TestFacebookAnalyticsEvents implements FacebookAnalyticsEvent {
  const TestFacebookAnalyticsEvents({
    required this.eventkey,
    required this.eventParams,
    this.eventValueToSum,
  });
  final String eventkey;
  final Map<String, Object?> eventParams;
  final double? eventValueToSum;
  @override
  String get key => eventkey;

  @override
  Map<String, Object?> get params => eventParams;

  @override
  double? get valueToSum => eventValueToSum;
}

void main() {
  late MockFacebookAppEvents mockFacebookAppEvents;
  late FacebookAnalyticEventSender eventSender;

  setUp(() {
    mockFacebookAppEvents = MockFacebookAppEvents();
    eventSender = FacebookAnalyticEventSender(mockFacebookAppEvents);
  });

  test('canHandle() should return true for TestFacebookAnalyticsEvents', () {
    const event = TestFacebookAnalyticsEvents(
      eventkey: 'testEvent',
      eventParams: {'testParam': 'testValue'},
      eventValueToSum: 1.0,
    );
    expect(eventSender.canHandle(event), true);
  });

  test('perform() should call logEvent with correct value', () {
    const event = TestFacebookAnalyticsEvents(
      eventkey: 'testEvent',
      eventParams: {'testParam': 'testValue'},
      eventValueToSum: 1.0,
    );
    when(
      mockFacebookAppEvents.logEvent(
        name: event.key,
        parameters: event.params,
        valueToSum: event.valueToSum,
      ),
    ).thenAnswer((_) => Future.value());
    eventSender.perform(event);
    verify(
      mockFacebookAppEvents.logEvent(
        name: event.key,
        parameters: event.params,
        valueToSum: event.valueToSum,
      ),
    ).called(1);
  });

  test('perform() should not call logEvent un-trimmed values', () {
    final testGen = TestStringGenerator();
    final event = TestFacebookAnalyticsEvents(
      eventkey: testGen.generateRandomString(kMaxEventKeyLength + 10),
      eventParams: {'testParam': 'testValue'},
      eventValueToSum: 1.0,
    );
    when(
      mockFacebookAppEvents.logEvent(
        name: event.key,
        parameters: event.params,
        valueToSum: event.valueToSum,
      ),
    ).thenAnswer((_) => Future.value());
    eventSender.perform(event);
    verifyNever(
      mockFacebookAppEvents.logEvent(
        name: event.key,
        parameters: event.params,
        valueToSum: event.valueToSum,
      ),
    );
  });
}
