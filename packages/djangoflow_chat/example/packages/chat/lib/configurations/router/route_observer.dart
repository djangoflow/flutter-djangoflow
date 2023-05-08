import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    _logScreenView(route.name);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    _logScreenView(route.name);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    final screenName = route.settings.name;
    if (screenName != null) {
      _logScreenView(screenName);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      final screenName = previousRoute.settings.name;
      if (screenName != null) {
        _logScreenView(screenName);
      }
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (newRoute != null) {
      final screenName = newRoute.settings.name;
      if (screenName != null) {
        _logScreenView(screenName);
      }
    }
  }

  void _logScreenView(String screenName) {
    // TODO log screenviews using Analytics
  }
}
