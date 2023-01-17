import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:djangoflow_firebase_analytics/src/utils/firebase_user_property_trimmer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import 'firebase_removable_user_property.dart';

class FirebaseUserPropertyRemover
    implements AnalyticActionPerformer<FirebaseRemovableUserProperty> {
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseUserPropertyCutter _userPropertyCutter =
      FirebaseUserPropertyCutter();

  FirebaseUserPropertyRemover(this._firebaseAnalytics);
  @override
  bool canHandle(AnalyticAction action) =>
      action is FirebaseRemovableUserProperty;

  @override
  void perform(FirebaseRemovableUserProperty action) {
    if (action.key == kIdKey) {
      _firebaseAnalytics.setUserId(id: null);
    } else {
      _firebaseAnalytics.setUserProperty(
        name: _userPropertyCutter.trimName(action.key),
        value: null,
      );
    }
  }
}
