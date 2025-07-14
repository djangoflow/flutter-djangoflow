import 'package:analytics/analytics.dart';
import 'package:djangoflow_analytics/djangoflow_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'analytics_test.mocks.dart';

class TestAnalyticsAction implements AnalyticAction {}

@GenerateNiceMocks([MockSpec<AnalyticStrategy>()])
void main() {
  group('DjangoflowAnalytics', () {
    test('init sets _hasInitialized to true', () {
      final analytics = DjangoflowAnalytics.testInstance;

      analytics.init();
      expect(analytics.hasInitialized, true);
    });

    test('performAction calls performAction on strategies that can handle action',
        () {
      final analytics = DjangoflowAnalytics.testInstance;
      analytics.init();
      final action = TestAnalyticsAction();
      final strategy1 = MockAnalyticStrategy();
      when(strategy1.canHandle(action)).thenReturn(true);
      final strategy2 = MockAnalyticStrategy();
      when(strategy2.canHandle(action)).thenReturn(false);
      analytics.addAllStrategies([strategy1, strategy2]);

      analytics.performAction(action);

      verify(strategy1.performAction(action));
      verifyNever(strategy2.performAction(action));
    });

    test('performAction does not call performAction if _hasInitialized is false', () {
      final analytics = DjangoflowAnalytics.testInstance;

      final action = TestAnalyticsAction();
      final strategy = MockAnalyticStrategy();
      when(strategy.canHandle(action)).thenReturn(true);
      analytics.addAllStrategies([strategy]);

      analytics.performAction(action);
      verifyNever(strategy.performAction(action));
    });

    test('addAllStrategies adds strategies to _strategies', () {
      final analytics = DjangoflowAnalytics.testInstance;
      final strategy1 = MockAnalyticStrategy();
      final strategy2 = MockAnalyticStrategy();

      analytics.addAllStrategies([strategy1, strategy2]);
      expect(analytics.strategies, [strategy1, strategy2]);
    });
  });
}
