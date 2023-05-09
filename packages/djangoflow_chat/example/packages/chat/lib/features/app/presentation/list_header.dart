import 'package:chat/configurations/configurations.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({super.key, required this.text, this.trailing});
  final String text;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      color: theme.appBarTheme.backgroundColor,
      padding: const EdgeInsets.symmetric(
        horizontal: kPadding * 2,
        vertical: kPadding,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: textTheme.titleSmall,
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(
              width: kPadding,
            ),
            trailing!
          ],
        ],
      ),
    );
  }
}
