import 'package:chat/configurations/configurations.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, required this.size}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) => Image.asset(
        kAppLogoPath,
        height: size,
        width: size,
      );
}
