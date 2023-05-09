import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.isLarge = false,
    this.imageProvider,
    this.placeHolder,
    this.customRadius,
  }) : super(key: key);
  final ImageProvider? imageProvider;
  final Widget? placeHolder;
  final double? customRadius;

  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final radius = customRadius ?? (isLarge ? 60.0 : 30.0);

    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        radius: radius,
        foregroundImage: imageProvider,
        child: placeHolder,
      ),
    );
  }
}
