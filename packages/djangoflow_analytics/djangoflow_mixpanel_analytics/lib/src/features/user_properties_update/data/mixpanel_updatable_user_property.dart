import 'package:analytics/analytics.dart';

class MixpanelUpdatableUserProperty implements AnalyticAction {
  final String key;
  final String? value;

  MixpanelUpdatableUserProperty(this.key, this.value);
}
