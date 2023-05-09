import 'package:chat/configurations/configurations.dart';
import 'package:flutter/material.dart';

import 'app_shimmer.dart';

class ListTileShimmer extends StatelessWidget {
  const ListTileShimmer({
    Key? key,
    this.margin,
  }) : super(key: key);
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) => AppShimmer(
        child: Container(
          margin: margin ?? const EdgeInsets.all(kPadding * 2),
          decoration: ShapeDecoration(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
          ),
          width: double.maxFinite,
          child: const ListTile(),
        ),
      );
}
