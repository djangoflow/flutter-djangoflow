import 'dart:math';
import 'package:chat/configurations/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat/features/app/app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final Color backgroundColor;
  const SplashPage({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final side = min(size.width, size.height) * 0.4;
    const kDuration = Duration(milliseconds: 700);
    return Scaffold(
      body: Center(
        child: ZoomInAnimatedContainer(
          duration: kDuration,
          onCompleted: () => context.router.replace(const HomeRoute()),
          child: AppLogo(
            size: side,
          ),
        ),
      ),
    );
  }
}
