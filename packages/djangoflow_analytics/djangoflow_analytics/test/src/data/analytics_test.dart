import 'package:analytics/analytics.dart';
import 'package:djangoflow_analytics/djangoflow_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'analytics_test.mocks.dart';

class TestAnalyticsAction implements AnalyticAction {}

@GenerateNiceMocks([MockSpec<AnalyticActionPerformer<TestAnalyticsAction>>()])
void main() {
  group('DjangoflowAnalytics', () {
    test('init sets _hasInitialized to true', () {
      final analytics = DjangoflowAnalytics.testInstance;

      analytics.init();
      expect(analytics.hasInitialized, true);
    });

    test('performAction calls perform on performers that can handle action',
        () {
      final analytics = DjangoflowAnalytics.testInstance;
      analytics.init();
      final action = TestAnalyticsAction();
      final performer1 = MockAnalyticActionPerformer();
      when(performer1.canHandle(action)).thenReturn(true);
      final performer2 = MockAnalyticActionPerformer();
      when(performer2.canHandle(action)).thenReturn(false);
      analytics.addAllActionPerformers([performer1, performer2]);

      analytics.performAction(action);

      verify(performer1.perform(action));
      verifyNever(performer2.perform(action));
    });

    test('performAction does not call perform if _hasInitialized is false', () {
      final analytics = DjangoflowAnalytics.testInstance;

      final action = TestAnalyticsAction();
      final performer = MockAnalyticActionPerformer();
      when(performer.canHandle(action)).thenReturn(true);
      analytics.addAllActionPerformers([performer]);

      analytics.performAction(action);
      verifyNever(performer.perform(action));
    });

    test('addAllActionPerformers adds performers to _performers', () {
      final analytics = DjangoflowAnalytics.testInstance;
      final performer1 = MockAnalyticActionPerformer();
      final performer2 = MockAnalyticActionPerformer();

      analytics.addAllActionPerformers([performer1, performer2]);
      expect(analytics.performers, [performer1, performer2]);
    });
  });
}
