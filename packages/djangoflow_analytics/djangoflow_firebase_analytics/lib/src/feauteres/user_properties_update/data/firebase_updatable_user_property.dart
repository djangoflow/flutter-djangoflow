import 'package:analytics/analytics.dart';

class FirebaseUpdatableUserProperty implements AnalyticAction {
  FirebaseUpdatableUserProperty(this.key, this.value);
  final String key;
  final String? value;
}
