import 'package:djangoflow_analytics/djangoflow_analytics.dart';

import '../configurations/constants.dart';

class FirebaseEventCutter extends EventCutter {
  @override
  Map<String, dynamic> cutMapParams(Map<String, Object> params) {
    final resultParams = <String, dynamic>{};
    for (final key in params.keys) {
      final value = params[key];
      resultParams[cutName(key)] = value is String ? cutValue(value) : value;
    }

    return resultParams;
  }

  @override
  String cutName(String name) => name.length <= kMaxEventKeyLength
      ? name
      : name.substring(0, kMaxEventKeyLength);

  @override
  String cutValue(String value) => value.length <= kMaxEventValueLength
      ? value
      : value.substring(0, kMaxEventValueLength);
}
