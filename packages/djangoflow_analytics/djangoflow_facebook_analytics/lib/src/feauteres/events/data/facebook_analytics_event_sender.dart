import 'package:analytics/analytics.dart';
import 'package:djangoflow_facebook_analytics/src/utils/utils.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'package:djangoflow_facebook_analytics/src/feauteres/events/data/facebook_analytics_event.dart';

/// Some events have values to determine value for events
/// like [FacebookAppEvents.logPurchase] or [FacebookAppEvents.logAddToCart]
/// to send sum value use `_valueToSum` key in [params] map
class FacebookAnalyticEventSender
    implements AnalyticActionPerformer<FacebookAnalyticsEvent> {
  FacebookAnalyticEventSender(this._facebookAppEvents);
  final FacebookAppEvents _facebookAppEvents;
  final FacebookEventTrimmer _eventTrimmer = FacebookEventTrimmer();

  @override
  bool canHandle(AnalyticAction action) => action is FacebookAnalyticsEvent;

  @override
  void perform(FacebookAnalyticsEvent action) {
    final notNullParams = _eventTrimmer.trimNullValueMapParams(action.params);
    final params = _eventTrimmer.trimMapParams(notNullParams);
    _facebookAppEvents.logEvent(
      name: _eventTrimmer.trimName(action.key),
      parameters: params,
      valueToSum: action.valueToSum,
    );
  }
}
