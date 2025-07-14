import 'package:analytics/analytics.dart';
import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:djangoflow_firebase_analytics/src/utils/firebase_user_property_trimmer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/user_properties_removal/data/firebase_removable_user_property.dart';

class FirebaseUserPropertyRemover extends AnalyticStrategy {
  FirebaseUserPropertyRemover(this._firebaseAnalytics);
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseUserPropertyCutter _userPropertyCutter =
      FirebaseUserPropertyCutter();
  @override
  bool canHandle(AnalyticAction action) =>
      action is FirebaseRemovableUserProperty;

  @override
  void performAction(AnalyticAction action) {
    final firebaseProperty = action as FirebaseRemovableUserProperty;
    if (firebaseProperty.key == kUserIdKey) {
      _firebaseAnalytics.setUserId(id: null);
    } else {
      _firebaseAnalytics.setUserProperty(
        name: _userPropertyCutter.trimName(firebaseProperty.key),
        value: null,
      );
    }
  }
}
