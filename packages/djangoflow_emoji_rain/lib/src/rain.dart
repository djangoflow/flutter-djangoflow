import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mounted_state/mounted_state.dart';

import 'rain_drop.dart';

/// A widget that creates a rain of emojis on the screen.
///
/// [emojiList] is the list of emoji character that will be used for the raindrops.
/// [numberOfRainDrops] specifies the number of raindrops on the screen.
/// [fallSpeedFactor] is a multiplier to control the speed of the falling raindrops. Higher values mean slower raindrops.
/// [onRainStopped] is a callback that is triggered when the rain stops.
class Rain extends StatefulWidget {
  Rain({
    super.key,
    this.onRainStopped,
    required this.numberOfRainDrops,
    this.fallSpeedFactor = 1.0,
    this.emojiList = const [],
  }) : assert(emojiList.isNotEmpty, 'Emoji list cannot be empty');
  final int numberOfRainDrops;

  final double fallSpeedFactor;
  final List<RainDropEmoji> emojiList;

  final VoidCallback? onRainStopped;
  @override
  State<Rain> createState() => _RainState();
}

class _RainState extends State<Rain>
    with SingleTickerProviderStateMixin, MountedStateOverride {
  AnimationController? _controller;
  List<RainDrop> rainDrops = [];

  @override
  void initState() {
    super.initState();

    // Generate initial raindrops
    WidgetsBinding.instance.addPostFrameCallback((_) {
      rainDrops = _generateRainDrops();

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

  List<RainDrop> _generateRainDrops() {
    final random = Random();
    return List.generate(widget.numberOfRainDrops, (index) {
      final initialPositionX =
          random.nextDouble() * MediaQuery.of(context).size.width;
      final initialPositionY =
          random.nextDouble() * MediaQuery.of(context).size.height;

      return RainDrop(
        initialPositionX: initialPositionX,
        initialPositionY: initialPositionY,
        rainDropEmoji:
            widget.emojiList[random.nextInt(widget.emojiList.length)],
      );
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
              final rainDropEmoji = rainDrop.rainDropEmoji;
              if (rainDropEmoji.gradient != null) {
                assert(rainDropEmoji.gradient!.colors.length >= 2,
                    'colors list must have at least two colors');
              }

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
                child: rainDrop.rainDropEmoji.gradient != null
                    ? GradientText(
                        text: rainDropEmoji.emoji,
                        gradient: rainDropEmoji.gradient!,
                        size: rainDropEmoji.emojiSize,
                        color: rainDropEmoji.emojiColor,
                      )
                    : Text(
                        rainDropEmoji.emoji,
                        style: TextStyle(
                          fontSize: rainDropEmoji.emojiSize,
                          color: rainDropEmoji.emojiColor,
                        ),
                      ),
              );
            }).toList(),
          ),
        );
}

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    this.size,
    this.color,
  });

  final String text;
  final Color? color;
  final double? size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}
