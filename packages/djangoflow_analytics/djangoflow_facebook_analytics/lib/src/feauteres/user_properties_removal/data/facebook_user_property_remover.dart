import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'package:djangoflow_facebook_analytics/src/feauteres/user_properties_removal/data/facebook_removable_user_property.dart';

class FacebookUserPropertyRemover
    implements AnalyticActionPerformer<FacebookRemovableUserProperty> {
  FacebookUserPropertyRemover(this._facebookAppEvents);
  final FacebookAppEvents _facebookAppEvents;
  @override
  bool canHandle(AnalyticAction action) =>
      action is FacebookRemovableUserProperty;

  @override
  void perform(FacebookRemovableUserProperty action) {
    if (action.removeUserId) {
      _facebookAppEvents.clearUserID();
    }
    if (action.removeAllUserData) {
      _facebookAppEvents.clearUserData();
    }
  }
}
