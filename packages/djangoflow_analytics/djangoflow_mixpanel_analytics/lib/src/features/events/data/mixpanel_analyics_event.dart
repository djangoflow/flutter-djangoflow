import 'package:analytics/analytics.dart';
import 'package:djangoflow_analytics/djangoflow_analytics.dart';

abstract class MixpanelAnalyticsEvent
    implements AnalyticAction, HasKey, HasMapParams {}
