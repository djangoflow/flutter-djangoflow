import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_analytics.dart';

class AnalyticsRouteObserver extends AutoRouterObserver {
  final _analyticsRepository = AppAnalytics.instance;

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    _analyticsRepository.logScreenView(screenName: route.name);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    _analyticsRepository.logScreenView(screenName: route.name);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _analyticsRepository.logScreenView(screenName: route.settings.name);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      _analyticsRepository.logScreenView(
        screenName: previousRoute.settings.name,
      );
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (newRoute != null) {
      _analyticsRepository.logScreenView(screenName: newRoute.settings.name);
    }
  }
}
