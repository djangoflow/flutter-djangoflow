import 'package:analytics/analytics.dart';

class FacebookUpdatableUserProperty implements AnalyticAction {

  FacebookUpdatableUserProperty(this.key, this.value);
  final String key;
  final String? value;
}
