import 'package:analytics/analytics.dart';

class UpdateMixpanelUserIdentity implements AnalyticAction {
  UpdateMixpanelUserIdentity(this.id, this.userProperties);
  final String? id;
  final Map<String, dynamic>? userProperties;
}
