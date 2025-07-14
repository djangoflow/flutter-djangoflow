import 'package:analytics/analytics.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

import 'package:djangoflow_mixpanel_analytics/src/features/user_properties_update/data/mixpanel_updatable_user_property.dart';

class MixpanelUserPropertyUpdater extends AnalyticStrategy {
  MixpanelUserPropertyUpdater(this._mixpanel);
  final Mixpanel _mixpanel;
  final MixpanelUserPropertyCutter _userPropertyCutter =
      MixpanelUserPropertyCutter();
  @override
  bool canHandle(AnalyticAction action) =>
      action is MixpanelUpdatableUserProperty;

  @override
  void performAction(AnalyticAction action) {
    final typedAction = action as MixpanelUpdatableUserProperty;
    final params = {
      _userPropertyCutter.trimName(typedAction.key): typedAction.value != null
          ? _userPropertyCutter.trimValue(typedAction.value!)
          : typedAction.value,
    };

    _mixpanel.registerSuperProperties(params);
  }
}
