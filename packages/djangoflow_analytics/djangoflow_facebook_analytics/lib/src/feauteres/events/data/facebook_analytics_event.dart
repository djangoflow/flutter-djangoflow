import 'package:analytics/analytics.dart';
import 'package:djangoflow_analytics/djangoflow_analytics.dart';

abstract class FacebookAnalyticsEvent
    implements AnalyticAction, HasKey, HasMapParams {
  FacebookAnalyticsEvent(this.valueToSum);
  final double? valueToSum;
}
