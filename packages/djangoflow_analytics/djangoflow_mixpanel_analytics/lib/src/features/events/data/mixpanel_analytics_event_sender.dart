import 'package:analytics/analytics.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';

import 'package:djangoflow_mixpanel_analytics/src/features/events/data/mixpanel_analyics_event.dart';

class MixpanelAnalyticEventSender extends AnalyticStrategy {
  MixpanelAnalyticEventSender(this._mixpanel);
  final Mixpanel _mixpanel;
  final MixpanelEventTrimmer _eventTrimmer = MixpanelEventTrimmer();

  @override
  bool canHandle(AnalyticAction action) => action is MixpanelAnalyticsEvent;

  @override
  void performAction(AnalyticAction action) {
    final typedAction = action as MixpanelAnalyticsEvent;
    final notNullParams = _eventTrimmer.trimNullValueMapParams(typedAction.params);
    final params = _eventTrimmer.trimMapParams(notNullParams);
    _mixpanel.track(
      _eventTrimmer.trimName(typedAction.key),
      properties: params,
    );
  }
}
