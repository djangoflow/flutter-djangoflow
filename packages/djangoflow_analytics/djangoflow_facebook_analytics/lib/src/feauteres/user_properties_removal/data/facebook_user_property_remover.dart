import 'package:analytics/analytics.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'package:djangoflow_facebook_analytics/src/feauteres/user_properties_removal/data/facebook_removable_user_property.dart';

class FacebookUserPropertyRemover
    extends AnalyticStrategy {
  FacebookUserPropertyRemover(this._facebookAppEvents);
  final FacebookAppEvents _facebookAppEvents;
  @override
  bool canHandle(AnalyticAction action) =>
      action is FacebookRemovableUserProperty;

  @override
  void performAction(AnalyticAction action) {
    final facebookAction = action as FacebookRemovableUserProperty;
    if (facebookAction.removeUserId) {
      _facebookAppEvents.clearUserID();
    }
    if (facebookAction.removeAllUserData) {
      _facebookAppEvents.clearUserData();
    }
  }
}
