import 'package:analytics/analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/events/data/firebase_analytics_event.dart';
import 'package:djangoflow_firebase_analytics/src/utils/fireabase_event_trimmer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticEventSender extends AnalyticStrategy {
  FirebaseAnalyticEventSender(this._firebaseAnalytics);
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseEventTrimmer _eventTrimmer = FirebaseEventTrimmer();

  @override
  bool canHandle(AnalyticAction action) => action is FirebaseAnalyticsEvent;

  @override
  void performAction(AnalyticAction action) {
    final firebaseEvent = action as FirebaseAnalyticsEvent;
    final notNullParams = _eventTrimmer.trimNullValueMapParams(firebaseEvent.params);
    final params = _eventTrimmer.trimMapParams(notNullParams);
    _firebaseAnalytics.logEvent(
      name: _eventTrimmer.trimName(firebaseEvent.key),
      parameters: params,
    );
  }
}
