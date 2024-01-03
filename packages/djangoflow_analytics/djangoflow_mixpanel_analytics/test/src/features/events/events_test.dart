import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
import 'package:djangoflow_mixpanel_analytics/src/configurations/constants.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';

import '../../../helpers/helpers.dart';

class TestMixpanelAnalyticsEvents implements MixpanelAnalyticsEvent {
  const TestMixpanelAnalyticsEvents({
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
  late MockMixpanel mockMixpanelAnalytics;
  late MixpanelAnalyticEventSender eventSender;

  setUp(() {
    mockMixpanelAnalytics = MockMixpanel();
    eventSender = MixpanelAnalyticEventSender(mockMixpanelAnalytics);
  });

  test('canHandle() should return true for TestMixpanelAnalyticsEvents', () {
    const event = TestMixpanelAnalyticsEvents(
      eventkey: 'testEvent',
      eventParams: {'testParam': 'testValue'},
    );
    expect(eventSender.canHandle(event), true);
  });

  test('perform() should call track with correct value', () {
    const event = TestMixpanelAnalyticsEvents(
      eventkey: 'testEvent',
      eventParams: {'testParam': 'testValue'},
    );
    when(
      mockMixpanelAnalytics.track(
        event.key,
        properties: event.params,
      ),
    ).thenAnswer((_) => Future.value());
    eventSender.perform(event);
    verify(
      mockMixpanelAnalytics.track(
        event.key,
        properties: event.params,
      ),
    ).called(1);
  });

  test('perform() should not call track un-trimmed values', () {
    final testGen = TestStringGenerator();
    final event = TestMixpanelAnalyticsEvents(
      eventkey: testGen.generateRandomString(kMaxEventKeyLength + 10),
      eventParams: {'testParam': 'testValue'},
    );
    when(
      mockMixpanelAnalytics.track(
        event.key,
        properties: event.params,
      ),
    ).thenAnswer((_) => Future.value());
    eventSender.perform(event);
    verifyNever(
      mockMixpanelAnalytics.track(
        event.key,
        properties: event.params,
      ),
    );
  });
}
