import 'package:analytics/analytics.dart';

class FacebookRemovableUserProperty implements AnalyticAction {
  FacebookRemovableUserProperty(this.removeUserId, this.removeAllUserData);
  final bool removeUserId;
  final bool removeAllUserData;
}
