import 'package:analytics/analytics.dart';

class FirebaseRemovableUserProperty implements AnalyticAction {
  final String key;

  FirebaseRemovableUserProperty(this.key);
}
