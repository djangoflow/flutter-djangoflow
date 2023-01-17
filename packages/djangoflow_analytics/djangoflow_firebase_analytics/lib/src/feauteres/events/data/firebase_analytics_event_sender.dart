import 'package:analytics/analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/events/data/firebase_analytics_event.dart';
import 'package:djangoflow_firebase_analytics/src/utils/fireabase_event_trimmer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticEventSender
    implements AnalyticActionPerformer<FirebaseAnalyticsEvent> {
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseEventTrimmer _eventTrimmer = FirebaseEventTrimmer();

  FirebaseAnalyticEventSender(this._firebaseAnalytics);

  @override
  bool canHandle(AnalyticAction action) => action is FirebaseAnalyticsEvent;

  @override
  void perform(FirebaseAnalyticsEvent action) {
    final notNullParams = _eventTrimmer.trimNullValueMapParams(action.params);
    final params = _eventTrimmer.trimMapParams(notNullParams);
    _firebaseAnalytics.logEvent(
      name: _eventTrimmer.trimName(action.key),
      parameters: params,
    );
  }
}
