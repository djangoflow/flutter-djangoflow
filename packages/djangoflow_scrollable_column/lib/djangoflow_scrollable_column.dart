library;

import 'package:flutter/material.dart';

/// Creates a vertical array of widgets that are scrollable.
class DjangoflowScrollableColumn extends StatelessWidget {
  final ScrollController? controller;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final bool? primary;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final List<Widget> children;

  const DjangoflowScrollableColumn({
    required this.children,
    super.key,
    this.primary,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.controller,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
  });

  @override
  Widget build(BuildContext context) => CustomScrollView(
        controller: controller,
        primary: primary,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: mainAxisAlignment,
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: crossAxisAlignment,
              textDirection: textDirection,
              verticalDirection: verticalDirection,
              textBaseline: textBaseline,
              children: children,
            ),
          ),
        ],
      );
}
