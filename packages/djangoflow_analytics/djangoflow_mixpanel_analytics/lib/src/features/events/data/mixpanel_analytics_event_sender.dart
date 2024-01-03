import 'package:analytics/analytics.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';

import 'package:djangoflow_mixpanel_analytics/src/features/events/data/mixpanel_analyics_event.dart';

class MixpanelAnalyticEventSender
    implements AnalyticActionPerformer<MixpanelAnalyticsEvent> {
  MixpanelAnalyticEventSender(this._mixpanel);
  final Mixpanel _mixpanel;
  final MixpanelEventTrimmer _eventTrimmer = MixpanelEventTrimmer();

  @override
  bool canHandle(AnalyticAction action) => action is MixpanelAnalyticsEvent;

  @override
  void perform(MixpanelAnalyticsEvent action) {
    final notNullParams = _eventTrimmer.trimNullValueMapParams(action.params);
    final params = _eventTrimmer.trimMapParams(notNullParams);
    _mixpanel.track(
      _eventTrimmer.trimName(action.key),
      properties: params,
    );
  }
}
