import 'package:djangoflow_analytics/djangoflow_analytics.dart';

import 'package:djangoflow_mixpanel_analytics/src/configurations/constants.dart';

class MixpanelUserPropertyCutter extends UserPropertyTrimmer {
  @override
  String trimName(String name) => name.length <= kMaxSetUserPropertyKeyLength
      ? name
      : name.substring(0, kMaxSetUserPropertyKeyLength);

  @override
  String trimValue(String value) =>
      value.length <= kMaxSetUserPropertyValueLength
          ? value
          : value.substring(0, kMaxSetUserPropertyValueLength);
}
