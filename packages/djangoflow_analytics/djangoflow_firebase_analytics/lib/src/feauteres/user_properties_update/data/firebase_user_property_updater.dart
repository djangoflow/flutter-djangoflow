import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:djangoflow_firebase_analytics/src/utils/firebase_user_property_trimmer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/user_properties_update/data/firebase_updatable_user_property.dart';

class FirebaseUserPropertyUpdater
    implements AnalyticActionPerformer<FirebaseUpdatableUserProperty> {
  FirebaseUserPropertyUpdater(this._firebaseAnalytics);
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseUserPropertyCutter _userPropertyCutter =
      FirebaseUserPropertyCutter();
  @override
  bool canHandle(AnalyticAction action) =>
      action is FirebaseUpdatableUserProperty;

  @override
  void perform(FirebaseUpdatableUserProperty action) {
    if (action.key == kUserIdKey) {
      _firebaseAnalytics.setUserId(id: action.value);
    } else {
      _firebaseAnalytics.setUserProperty(
        name: _userPropertyCutter.trimName(action.key),
        value: action.value != null
            ? _userPropertyCutter.trimValue(action.value!)
            : action.value,
      );
    }
  }
}
