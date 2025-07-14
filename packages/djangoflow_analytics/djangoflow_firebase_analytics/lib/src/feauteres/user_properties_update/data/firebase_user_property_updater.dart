import 'package:analytics/analytics.dart';
import 'package:djangoflow_firebase_analytics/src/configurations/constants.dart';
import 'package:djangoflow_firebase_analytics/src/utils/firebase_user_property_trimmer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/user_properties_update/data/firebase_updatable_user_property.dart';

class FirebaseUserPropertyUpdater extends AnalyticStrategy {
  FirebaseUserPropertyUpdater(this._firebaseAnalytics);
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseUserPropertyCutter _userPropertyCutter =
      FirebaseUserPropertyCutter();
  @override
  bool canHandle(AnalyticAction action) =>
      action is FirebaseUpdatableUserProperty;

  @override
  void performAction(AnalyticAction action) {
    final firebaseProperty = action as FirebaseUpdatableUserProperty;
    if (firebaseProperty.key == kUserIdKey) {
      _firebaseAnalytics.setUserId(id: firebaseProperty.value);
    } else {
      _firebaseAnalytics.setUserProperty(
        name: _userPropertyCutter.trimName(firebaseProperty.key),
        value: firebaseProperty.value != null
            ? _userPropertyCutter.trimValue(firebaseProperty.value!)
            : firebaseProperty.value,
      );
    }
  }
}
