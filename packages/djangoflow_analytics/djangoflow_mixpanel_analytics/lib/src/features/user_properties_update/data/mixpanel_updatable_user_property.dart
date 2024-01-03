import 'package:analytics/analytics.dart';

class MixpanelUpdatableUserProperty implements AnalyticAction {

  MixpanelUpdatableUserProperty(this.key, this.value);
  final String key;
  final String? value;
}
