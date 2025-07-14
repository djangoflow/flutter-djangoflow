import 'package:analytics/analytics.dart';
import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelUserIdentityUpdater extends AnalyticStrategy {
  MixpanelUserIdentityUpdater(this._mixpanel);
  final Mixpanel _mixpanel;

  @override
  bool canHandle(AnalyticAction action) => action is UpdateMixpanelUserIdentity;

  @override
  void performAction(AnalyticAction action) {
    final typedAction = action as UpdateMixpanelUserIdentity;
    if (typedAction.id != null) {
      _mixpanel.identify(typedAction.id!).then((_) {
        if (typedAction.userProperties != null &&
            typedAction.userProperties!.isNotEmpty) {
          final people = _mixpanel.getPeople();
          typedAction.userProperties!.forEach((key, value) {
            people.set(key, value);
          });
        }
      });
    } else {
      _mixpanel.reset();
    }
  }
}
