import 'package:analytics/analytics.dart';

class FirebaseUserUpdateProperty implements AnalyticAction {
  final String key;
  final String? value;

  FirebaseUserUpdateProperty(this.key, this.value);
}
