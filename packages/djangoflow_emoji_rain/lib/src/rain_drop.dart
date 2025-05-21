import 'package:flutter/material.dart';

class RainDrop {
  final double initialPositionX;
  final double initialPositionY;
  final RainDropEmoji rainDropEmoji;

  RainDrop(
      {required this.initialPositionX,
      required this.initialPositionY,
      required this.rainDropEmoji});
}

///[RainDropEmoji] is a class that contains the emoji, size, color, and gradient
///[emoji] is emoji characters
///[emojiSize] is emoji size
///[emojiColor] is emoji color
///[gradient] is emoji gradient
class RainDropEmoji {
  final String emoji;
  final double emojiSize;
  final Color? emojiColor;
  final Gradient? gradient;
  RainDropEmoji({
    required this.emoji,
    required this.emojiSize,
    this.emojiColor,
    this.gradient,
  });
}
