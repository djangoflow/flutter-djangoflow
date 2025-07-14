import 'package:analytics/analytics.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

import 'package:djangoflow_mixpanel_analytics/src/features/user_properties_removal/data/mixpanel_removable_user_property.dart';

class MixpanelUserPropertyRemover extends AnalyticStrategy {
  MixpanelUserPropertyRemover(this._mixpanel);
  final Mixpanel _mixpanel;
  final MixpanelUserPropertyCutter _userPropertyCutter =
      MixpanelUserPropertyCutter();
  @override
  bool canHandle(AnalyticAction action) =>
      action is MixpanelRemovableUserProperty;

  @override
  void performAction(AnalyticAction action) {
    final typedAction = action as MixpanelRemovableUserProperty;
    _mixpanel.unregisterSuperProperty(_userPropertyCutter.trimName(typedAction.key));
  }
}
