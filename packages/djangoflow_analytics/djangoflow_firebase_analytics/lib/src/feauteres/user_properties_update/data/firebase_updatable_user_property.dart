import 'package:analytics/analytics.dart';

class FirebaseUpdatableUserProperty implements AnalyticAction {
  final String key;
  final String? value;

  FirebaseUpdatableUserProperty(this.key, this.value);
}
