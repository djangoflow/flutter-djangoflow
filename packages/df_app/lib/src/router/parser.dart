import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteParser extends DefaultRouteParser {
  RouteParser(matcher, {bool includePrefixMatches = true})
      : super(matcher, includePrefixMatches: includePrefixMatches);

  @override
  Future<UrlState> parseRouteInformation(
      RouteInformation routeInformation,
      ) async {
    debugPrint('deeplink> ${routeInformation.location}');

    // Remove "/#" from native deep links
    return super.parseRouteInformation(
      kIsWeb
          ? routeInformation
          : RouteInformation(
        location: routeInformation.location?.replaceFirst('/#', ''),
        state: routeInformation.state,
      ),
    );
  }
}
