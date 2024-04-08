import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelUserIdentityUpdater
    implements AnalyticActionPerformer<MixpanelUserIdentity> {
  MixpanelUserIdentityUpdater(this._mixpanel);
  final Mixpanel _mixpanel;

  @override
  bool canHandle(AnalyticAction action) => action is MixpanelUserIdentity;

  @override
  void perform(MixpanelUserIdentity action) {
    if (action.id != null) {
      _mixpanel.identify(action.id!);
    } else {
      _mixpanel.reset();
    }
  }
}
