import 'package:analytics/analytics.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'facebook_advertise_tracking_event.dart';

class FacebookAdvertiseTrackingEventSender
    implements AnalyticActionPerformer<FacebookAdvertiseTrackingEvent> {
  final FacebookAppEvents _facebookAppEvents;

  FacebookAdvertiseTrackingEventSender(this._facebookAppEvents);

  @override
  bool canHandle(AnalyticAction action) =>
      action is FacebookAdvertiseTrackingEvent;

  @override
  void perform(FacebookAdvertiseTrackingEvent action) {
    _facebookAppEvents.setAdvertiserTracking(enabled: action.enabled);
  }
}
