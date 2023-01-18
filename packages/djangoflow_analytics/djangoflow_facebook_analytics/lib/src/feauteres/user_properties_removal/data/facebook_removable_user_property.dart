import 'package:analytics/analytics.dart';

class FacebookRemovableUserProperty implements AnalyticAction {
  final bool removeUserId;
  final bool removeAllUserData;
  FacebookRemovableUserProperty(this.removeUserId, this.removeAllUserData);
}
