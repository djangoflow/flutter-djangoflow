import 'package:analytics/analytics.dart';

class MixpanelUserIdentity implements AnalyticAction {
  MixpanelUserIdentity(this.id);
  final String? id;
}
