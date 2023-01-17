import 'package:analytics/analytics.dart';

class FacebookUpdatableUserProperty implements AnalyticAction {
  final String key;
  final String? value;

  FacebookUpdatableUserProperty(this.key, this.value);
}
