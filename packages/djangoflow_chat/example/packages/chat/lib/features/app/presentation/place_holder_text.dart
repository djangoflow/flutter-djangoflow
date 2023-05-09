import 'package:flutter/material.dart';

class PlaceholderText extends StatelessWidget {
  const PlaceholderText({
    required this.text,
    this.isLarge = false,
    Key? key,
  }) : super(key: key);

  final String text;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Text(
      text,
      style: (isLarge ? textTheme.headlineMedium : textTheme.titleMedium)
          ?.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      ),
    );
  }
}
