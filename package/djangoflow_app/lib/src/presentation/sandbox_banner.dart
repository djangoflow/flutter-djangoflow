import 'package:flutter/material.dart';

class SandboxBanner extends StatelessWidget {
  final bool isSandbox;
  final Widget child;
  final String message;
  final Color color;

  const SandboxBanner({
    Key? key,
    required this.child,
    required this.isSandbox,
    this.color = Colors.orange,
    this.message = 'sandbox',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => isSandbox
      ? Banner(
          message: message,
          color: color,
          location: BannerLocation.topEnd,
          child: child,
        )
      : child;
}
