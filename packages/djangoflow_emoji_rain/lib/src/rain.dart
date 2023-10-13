import 'dart:math';

import 'package:flutter/material.dart';

import 'rain_drop.dart';

/// A widget that creates a rain of emojis on the screen.
///
/// [emoji] is the emoji character that will be used for the raindrops.
/// [numberOfRainDrops] specifies the number of raindrops on the screen.
/// [fallSpeedFactor] is a multiplier to control the speed of the falling raindrops. Higher values mean slower raindrops.
/// [onRainStopped] is a callback that is triggered when the rain stops.
class Rain extends StatefulWidget {
  const Rain({
    super.key,
    required this.emoji,
    this.onRainStopped,
    required this.numberOfRainDrops,
    this.fallSpeedFactor = 1.0,
  });
  final String emoji;
  final int numberOfRainDrops;

  final double fallSpeedFactor;

  final VoidCallback? onRainStopped;
  @override
  State<Rain> createState() => _RainState();
}

class _RainState extends State<Rain> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  List<RainDrop> rainDrops = [];

  @override
  void initState() {
    super.initState();

    // Generate initial raindrops
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (int i = 0; i < widget.numberOfRainDrops; i++) {
        final initialPositionX =
            Random().nextDouble() * MediaQuery.of(context).size.width;
        final initialPositionY =
            Random().nextDouble() * MediaQuery.of(context).size.height;

        rainDrops.add(
          RainDrop(
            size: Random().nextDouble() * 30 + 10,
            initialPositionX: initialPositionX,
            initialPositionY: initialPositionY,
          ),
        );
      }

      // Calculate the maximum time needed for a raindrop to reach the bottom
      double maxTime = rainDrops
          .map((rainDrop) =>
              (MediaQuery.of(context).size.height - rainDrop.initialPositionY) /
              MediaQuery.of(context).size.height)
          .reduce(max);

      setState(() {
        _controller = AnimationController(
          duration: Duration(
              seconds: (maxTime * 2 * widget.fallSpeedFactor)
                  .ceil()), // Adjusted duration
          vsync: this,
        )..forward();
      });

      _controller?.addListener(() {
        if (_controller?.status == AnimationStatus.completed) {
          _controller?.reset();
          widget.onRainStopped?.call();
        }
      });

      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _controller == null
      ? const SizedBox()
      : AnimatedBuilder(
          animation: _controller!,
          builder: (context, child) => Stack(
            children: rainDrops.map((rainDrop) {
              double fallDistance =
                  (_controller!.value * MediaQuery.of(context).size.height);
              double totalFallDistance =
                  rainDrop.initialPositionY + fallDistance;
              double positionY;
              if (totalFallDistance >= MediaQuery.of(context).size.height) {
                positionY = MediaQuery.of(context).size.height;
              } else {
                positionY =
                    totalFallDistance % MediaQuery.of(context).size.height;
              }
              return Transform.translate(
                offset: Offset(
                  rainDrop.initialPositionX,
                  positionY,
                ),
                child: Text(
                  widget.emoji,
                  style: TextStyle(
                    fontSize: rainDrop.size,
                  ),
                ),
              );
            }).toList(),
          ),
        );
}
