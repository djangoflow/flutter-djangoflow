import 'package:analytics/analytics.dart';
import 'package:djangoflow_facebook_analytics/src/configurations/constants.dart';
import 'package:djangoflow_facebook_analytics/src/utils/utils.dart';
import 'package:facebook_app_events/facebook_app_events.dart';

import 'package:djangoflow_facebook_analytics/src/feauteres/user_properties_update/data/facebook_updatable_user_property.dart';

/// Supports updating keys and values of user properties.
/// User properties keys are available for the following keys:
/// - [kUserIdKey] = 'user_id -> setUserID(String userId)
/// - [kEmailKey] = 'email' -> setUserData({email: String?})
/// - [kFirstNameKey] = 'first_name' -> setUserData({firstName: String?})
/// - [kLastNameKey] = 'last_name' -> setUserData({lastName: String?})
class FacebookUserPropertyUpdater
    extends AnalyticStrategy {
  FacebookUserPropertyUpdater(this._facebookAppEvents);
  final FacebookAppEvents _facebookAppEvents;
  final FacebookUserPropertyTrimmer _userPropertyCutter =
      FacebookUserPropertyTrimmer();
  @override
  bool canHandle(AnalyticAction action) =>
      action is FacebookUpdatableUserProperty;

  @override
  void performAction(AnalyticAction action) {
    final facebookAction = action as FacebookUpdatableUserProperty;
    if (facebookAction.key == kUserIdKey) {
      final userId = facebookAction.value;
      if (userId != null) {
        _facebookAppEvents.setUserID(userId);
      }
    } else {
      _facebookAppEvents.setUserData(
        email: _getValueForKey(
          toComaprekey: kEmailKey,
          actionKey: facebookAction.key,
          value: facebookAction.value,
        ),
        firstName: _getValueForKey(
          toComaprekey: kFirstNameKey,
          actionKey: facebookAction.key,
          value: facebookAction.value,
        ),
        lastName: _getValueForKey(
          toComaprekey: kLastNameKey,
          actionKey: facebookAction.key,
          value: facebookAction.value,
        ),
      );
    }
  }

  String? _getValueForKey({
    required String toComaprekey,
    required String actionKey,
    String? value,
  }) =>
      toComaprekey == actionKey
          ? value != null
              ? _userPropertyCutter.trimValue(value)
              : value
          : null;
}
