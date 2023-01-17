import 'package:analytics/analytics.dart';

class MixpanelRemovableUserProperty implements AnalyticAction {
  final String key;

  MixpanelRemovableUserProperty(this.key);
}
