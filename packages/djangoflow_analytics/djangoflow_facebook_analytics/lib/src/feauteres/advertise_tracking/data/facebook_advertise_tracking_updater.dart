import 'package:analytics/analytics.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'package:djangoflow_facebook_analytics/src/feauteres/advertise_tracking/data/facebook_advertise_tracking_event.dart';

class FacebookAdvertiseTrackingUpdater
    extends AnalyticStrategy {
  FacebookAdvertiseTrackingUpdater(this._facebookAppEvents);
  final FacebookAppEvents _facebookAppEvents;

  @override
  bool canHandle(AnalyticAction action) =>
      action is FacebookAdvertiseTrackingEvent;

  @override
  void performAction(AnalyticAction action) {
    final facebookAction = action as FacebookAdvertiseTrackingEvent;
    _facebookAppEvents.setAdvertiserTracking(enabled: facebookAction.enabled);
  }
}
