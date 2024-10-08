import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

abstract class BaseMarkdownTruncate extends MarkdownBody {
  const BaseMarkdownTruncate({
    required super.data,
    super.key,
    super.selectable,
    super.styleSheet,
    super.styleSheetTheme,
    super.syntaxHighlighter,
    super.onTapLink,
    super.onTapText,
    super.imageDirectory,
    super.blockSyntaxes,
    super.inlineSyntaxes,
    super.extensionSet,
    super.imageBuilder,
    super.checkboxBuilder,
    super.builders,
    super.listItemCrossAxisAlignment,
    super.shrinkWrap,
    super.fitContent,
    this.onReadMoreTapped,
  });

  final VoidCallback? onReadMoreTapped;

  List<T> findWidgetsOfType<T>(Widget widget) {
    final matches = <T>[];

    if (widget is T) {
      matches.add(widget as T);
    }

    if (widget is MultiChildRenderObjectWidget) {
      for (final child in widget.children) {
        matches.addAll(findWidgetsOfType<T>(child));
      }
    } else if (widget is SingleChildRenderObjectWidget) {
      if (widget.child != null) {
        matches.addAll(findWidgetsOfType<T>(widget.child!));
      }
    }

    return matches;
  }

  List<TextSpan> buildReadMoreSpan(
    TextStyle? defaultStyle,
    TextStyle? anchorStyle,
  ) =>
      [
        TextSpan(text: '... ', style: defaultStyle),
        if (onReadMoreTapped != null)
          TextSpan(
            text: '[Read more]',
            style: anchorStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                if (onReadMoreTapped != null) {
                  onReadMoreTapped!();
                }
              },
          ),
      ];
}
