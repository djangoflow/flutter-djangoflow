import 'package:analytics/analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/events/data/firebase_analytics_event.dart';
import 'package:djangoflow_firebase_analytics/src/utils/fireabase_event_cutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticEventSender
    implements AnalyticActionPerformer<FirebaseAnalyticsEvent> {
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseEventCutter _eventCutter = FirebaseEventCutter();

  FirebaseAnalyticEventSender(this._firebaseAnalytics);

  @override
  bool canHandle(AnalyticAction action) => action is FirebaseAnalyticsEvent;

  @override
  void perform(FirebaseAnalyticsEvent action) {
    final params =
        _eventCutter.cutMapParams(action.params as Map<String, Object>);
    _firebaseAnalytics.logEvent(
      name: _eventCutter.cutName(action.key),
      parameters: params,
    );
  }
}
