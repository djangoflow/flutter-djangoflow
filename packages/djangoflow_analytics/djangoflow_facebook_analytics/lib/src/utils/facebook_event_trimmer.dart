import 'package:djangoflow_analytics/djangoflow_analytics.dart';

import 'package:djangoflow_facebook_analytics/src/configurations/constants.dart';

class FacebookEventTrimmer extends EventTrimmer {
  @override
  Map<String, Object> trimMapParams(Map<String, Object> params) {
    final resultParams = <String, Object>{};
    for (final key in params.keys) {
      final value = params[key] as Object;
      resultParams[trimName(key)] = value is String ? trimValue(value) : value;
    }

    return resultParams;
  }

  @override
  Map<String, Object> trimNullValueMapParams(Map<String, Object?> params) {
    final resultParams = <String, Object>{};
    for (final key in params.keys) {
      final value = params[key];
      if (value != null) {
        resultParams[key] = value;
      }
    }

    return resultParams;
  }

  @override
  String trimName(String name) => name.length <= kMaxEventKeyLength
      ? name
      : name.substring(0, kMaxEventKeyLength);

  @override
  String trimValue(String value) => value.length <= kMaxEventValueLength
      ? value
      : value.substring(0, kMaxEventValueLength);
}
