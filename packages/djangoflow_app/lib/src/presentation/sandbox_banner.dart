import 'package:flutter/material.dart';

class SandboxBanner extends StatelessWidget {
  const SandboxBanner({
    required this.child,
    required this.isSandbox,
    super.key,
    this.color = Colors.orange,
    this.message = 'sandbox',
  });
  final bool isSandbox;
  final Widget child;
  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) => isSandbox
      ? Banner(
          message: message,
          color: color,
          location: BannerLocation.topStart,
          child: child,
        )
      : child;
}
