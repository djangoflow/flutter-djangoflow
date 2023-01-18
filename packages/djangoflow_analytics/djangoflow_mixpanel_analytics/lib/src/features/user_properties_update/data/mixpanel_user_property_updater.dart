import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

import 'mixpanel_updatable_user_property.dart';

class MixpanelUserPropertyUpdater
    implements AnalyticActionPerformer<MixpanelUpdatableUserProperty> {
  final Mixpanel _mixpanel;
  final MixpanelUserPropertyCutter _userPropertyCutter =
      MixpanelUserPropertyCutter();

  MixpanelUserPropertyUpdater(this._mixpanel);
  @override
  bool canHandle(AnalyticAction action) =>
      action is MixpanelUpdatableUserProperty;

  @override
  void perform(MixpanelUpdatableUserProperty action) {
    final params = {
      _userPropertyCutter.trimName(action.key): action.value != null
          ? _userPropertyCutter.trimValue(action.value!)
          : action.value,
    };

    _mixpanel.registerSuperProperties(params);
  }
}
