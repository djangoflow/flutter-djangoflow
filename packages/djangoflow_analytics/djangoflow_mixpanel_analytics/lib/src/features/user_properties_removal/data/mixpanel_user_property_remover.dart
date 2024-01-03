import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

import 'package:djangoflow_mixpanel_analytics/src/features/user_properties_removal/data/mixpanel_removable_user_property.dart';

class MixpanelUserPropertyRemover
    implements AnalyticActionPerformer<MixpanelRemovableUserProperty> {

  MixpanelUserPropertyRemover(this._mixpanel);
  final Mixpanel _mixpanel;
  final MixpanelUserPropertyCutter _userPropertyCutter =
      MixpanelUserPropertyCutter();
  @override
  bool canHandle(AnalyticAction action) =>
      action is MixpanelRemovableUserProperty;

  @override
  void perform(MixpanelRemovableUserProperty action) {
    _mixpanel.unregisterSuperProperty(_userPropertyCutter.trimName(action.key));
  }
}
