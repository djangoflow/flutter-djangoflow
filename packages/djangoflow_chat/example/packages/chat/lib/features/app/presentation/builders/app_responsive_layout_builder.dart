import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppResponsiveLayoutBuilder extends StatelessWidget {
  const AppResponsiveLayoutBuilder({
    super.key,
    required this.child,
    this.breakpoints = const [
      ResponsiveBreakpoint.resize(480, name: MOBILE),
      ResponsiveBreakpoint.autoScale(800, name: TABLET),
      ResponsiveBreakpoint.resize(1000, name: DESKTOP),
    ],
    this.maxWidth = 600,
    required this.background,
  });
  final Widget child;
  final List<ResponsiveBreakpoint> breakpoints;
  final double maxWidth;
  final Widget background;

  @override
  Widget build(BuildContext context) => ResponsiveWrapper.builder(
        ClipRect(
          child: child,
        ),
        maxWidth: maxWidth,
        defaultScale: true,
        breakpoints: breakpoints,
        background: background,
      );
}
