import 'dart:math';
import 'package:chat/configurations/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final Color backgroundColor;
  const SplashPage({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const _kDuration = Duration(milliseconds: 700);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(_kDuration).then((value) {
        context.router.replace(const HomeRoute());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final side = min(size.width, size.height) * 0.4;

    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: side,
        ),
      ),
    );
  }
}
