import 'package:analytics/analytics.dart';

class DjangoflowAnalytics extends DefaultAnalyticService {
  static DjangoflowAnalytics get instance => _instance;
  static final DjangoflowAnalytics _instance = DjangoflowAnalytics._internal();

  DjangoflowAnalytics._internal() : super();
}
