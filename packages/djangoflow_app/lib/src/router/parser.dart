import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteParser extends DefaultRouteParser {
  static String? defaultLocationRewriter(String? location) =>
      kIsWeb ? location?.replaceFirst('/#', '') : location;

  final String? Function(String? location)? locationRewriter;

  RouteParser(matcher,
      {bool includePrefixMatches = true, this.locationRewriter})
      : super(matcher, includePrefixMatches: includePrefixMatches);

  @override
  Future<UrlState> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    debugPrint('deeplink> ${routeInformation.location}');

    // Remove "/#" from native deep links
    return super.parseRouteInformation(
      RouteInformation(
        location: locationRewriter?.call(routeInformation.location) ??
            defaultLocationRewriter(routeInformation.location),
        state: routeInformation.state,
      ),
    );
  }
}
