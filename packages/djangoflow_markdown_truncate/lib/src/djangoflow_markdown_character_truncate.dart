import 'package:flutter/material.dart';

import 'package:djangoflow_markdown_truncate/src/base_markdown_truncate.dart';

class DjangoflowMarkdownCharacterTruncate extends BaseMarkdownTruncate {
  const DjangoflowMarkdownCharacterTruncate({
    required super.data,
    super.key,
    this.maxCharacters,
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
    super.onReadMoreTapped,
  });

  final int? maxCharacters;

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    if (maxCharacters == null) {
      return ListView(
        shrinkWrap: shrinkWrap,
        children: children!,
      );
    }

    final truncatedChildren = _truncateWidgets(children!, maxCharacters!, 0);

    return ListView(
      shrinkWrap: shrinkWrap,
      children: truncatedChildren,
    );
  }

  List<Widget> _truncateWidgets(
    List<Widget> widgets,
    int maxCharacters,
    int initialCharacterCount,
  ) {
    final truncatedWidgets = <Widget>[];
    var characterCount = initialCharacterCount;

    for (final widget in widgets) {
      if (widget is Text) {
        final textSpan = widget.textSpan;

        if (textSpan != null && textSpan is TextSpan) {
          final truncatedTextSpan =
              _truncateTextSpan(textSpan, maxCharacters - characterCount);
          final truncatedTextSpanCharacterCount =
              _getTextSpanCharacterCount(truncatedTextSpan);
          characterCount += truncatedTextSpanCharacterCount;
          truncatedWidgets.add(
            Text.rich(
              truncatedTextSpan,
              style: widget.style,
              key: widget.key,
              textAlign: widget.textAlign,
              textDirection: widget.textDirection,
              locale: widget.locale,
              softWrap: widget.softWrap,
              overflow: widget.overflow,
              maxLines: widget.maxLines,
              semanticsLabel: widget.semanticsLabel,
              textWidthBasis: widget.textWidthBasis,
            ),
          );
        } else {
          print('Text: ${textSpan.runtimeType}');
          final text = widget.data ?? '';
          final remainingCharacters = maxCharacters - characterCount;

          if (remainingCharacters <= 0) {
            break;
          }

          if (text.length <= remainingCharacters) {
            truncatedWidgets.add(widget);
            characterCount += text.length;
          } else {
            final truncatedText = text.substring(0, remainingCharacters);
            truncatedWidgets.add(
              Text(
                truncatedText,
                style: widget.style,
                key: widget.key,
                textAlign: widget.textAlign,
                textDirection: widget.textDirection,
                locale: widget.locale,
                softWrap: widget.softWrap,
                overflow: widget.overflow,
                maxLines: widget.maxLines,
                semanticsLabel: widget.semanticsLabel,
                textWidthBasis: widget.textWidthBasis,
              ),
            );
            characterCount += remainingCharacters;
            break;
          }
        }
      } else if (widget is Wrap ||
          widget is Column ||
          widget is Row ||
          widget is SizedBox ||
          widget is Flexible ||
          widget is Expanded ||
          widget is Padding ||
          widget is Container) {
        print(widget.runtimeType);
        final children = _getChildren(widget);

        final truncatedChildren =
            _truncateWidgets(children, maxCharacters, characterCount);
        characterCount += _getCharacterCount(truncatedChildren);
        final truncatedWidget =
            _createTruncatedWidget(widget, truncatedChildren);

        if (characterCount >= maxCharacters) {
          print('Crossed Limit $characterCount >= $maxCharacters');
          truncatedWidgets.add(truncatedWidget);

          break;
        } else {
          truncatedWidgets.add(widget);
        }
      } else {
        truncatedWidgets.add(widget);
      }

      if (characterCount >= maxCharacters) {
        print(characterCount);

        truncatedWidgets.add(
          Text.rich(
            TextSpan(
              children: buildReadMoreSpan(styleSheet?.p, styleSheet?.a),
            ),
          ),
        );
        break;
      }
    }

    return truncatedWidgets;
  }

  Widget _createTruncatedWidget(Widget widget, List<Widget> truncatedChildren) {
    if (widget is Wrap) {
      return Wrap(
        key: widget.key,
        direction: widget.direction,
        alignment: widget.alignment,
        spacing: widget.spacing,
        runAlignment: widget.runAlignment,
        runSpacing: widget.runSpacing,
        crossAxisAlignment: widget.crossAxisAlignment,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        clipBehavior: widget.clipBehavior,
        children: truncatedChildren,
      );
    } else if (widget is Column) {
      return Column(
        key: widget.key,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        crossAxisAlignment: widget.crossAxisAlignment,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        textBaseline: widget.textBaseline,
        children: truncatedChildren,
      );
    } else if (widget is Row) {
      return Row(
        key: widget.key,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        crossAxisAlignment: widget.crossAxisAlignment,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        textBaseline: widget.textBaseline,
        children: truncatedChildren,
      );
    } else if (widget is SizedBox) {
      return SizedBox(
        key: widget.key,
        width: widget.width,
        height: widget.height,
        child: truncatedChildren.isNotEmpty ? truncatedChildren.first : null,
      );
    } else if (widget is Flexible) {
      return Flexible(
        key: widget.key,
        flex: widget.flex,
        fit: widget.fit,
        child: truncatedChildren.isNotEmpty
            ? truncatedChildren.first
            : const SizedBox(),
      );
    } else if (widget is Expanded) {
      return Expanded(
        key: widget.key,
        flex: widget.flex,
        child: truncatedChildren.isNotEmpty
            ? truncatedChildren.first
            : const SizedBox(),
      );
    } else if (widget is Padding) {
      return Padding(
        key: widget.key,
        padding: widget.padding,
        child: truncatedChildren.isNotEmpty ? truncatedChildren.first : null,
      );
    } else if (widget is Container) {
      return Container(
        key: widget.key,
        alignment: widget.alignment,
        padding: widget.padding,
        color: widget.color,
        decoration: widget.decoration,
        foregroundDecoration: widget.foregroundDecoration,
        constraints: widget.constraints,
        margin: widget.margin,
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        child: truncatedChildren.isNotEmpty ? truncatedChildren.first : null,
      );
    }
    return widget; // Return the original widget if no specific handling is needed
  }

  List<Widget> _getChildren(Widget widget) {
    if (widget is Wrap) {
      return widget.children;
    } else if (widget is Column) {
      return widget.children;
    } else if (widget is Row) {
      return widget.children;
    } else if (widget is SizedBox && widget.child != null) {
      return [widget.child!];
    } else if (widget is Flexible) {
      return [widget.child];
    } else if (widget is Expanded) {
      return [widget.child];
    } else if (widget is Padding && widget.child != null) {
      return [widget.child!];
    } else if (widget is Container && widget.child != null) {
      return [widget.child!];
    }
    return [];
  }

  TextSpan _truncateTextSpan(TextSpan textSpan, int remainingCharacters) {
    final text = textSpan.text ?? '';
    final children = textSpan.children ?? [];

    if (text.length <= remainingCharacters) {
      final truncatedChildren = <InlineSpan>[];
      int childrenCharacterCount = 0;

      for (final child in children) {
        if (child is TextSpan) {
          final truncatedChild = _truncateTextSpan(
            child,
            remainingCharacters - text.length - childrenCharacterCount,
          );
          truncatedChildren.add(truncatedChild);
          childrenCharacterCount += _getTextSpanCharacterCount(truncatedChild);
        } else {
          truncatedChildren.add(child);
        }

        if (text.length + childrenCharacterCount >= remainingCharacters) {
          break;
        }
      }

      return TextSpan(
        text: text,
        style: textSpan.style,
        children: truncatedChildren,
        locale: textSpan.locale,
        recognizer: textSpan.recognizer,
        mouseCursor: textSpan.mouseCursor,
        semanticsLabel: textSpan.semanticsLabel,
        onEnter: textSpan.onEnter,
        onExit: textSpan.onExit,
        spellOut: textSpan.spellOut,
      );
    } else {
      final truncatedText = text.substring(0, remainingCharacters);
      return TextSpan(
        text: truncatedText,
        style: textSpan.style,
        locale: textSpan.locale,
        recognizer: textSpan.recognizer,
        mouseCursor: textSpan.mouseCursor,
        semanticsLabel: textSpan.semanticsLabel,
        onEnter: textSpan.onEnter,
        onExit: textSpan.onExit,
        spellOut: textSpan.spellOut,
      );
    }
  }

  int _getTextSpanCharacterCount(TextSpan textSpan) {
    final text = textSpan.text ?? '';
    final children = textSpan.children ?? [];

    var characterCount = text.length;
    for (final child in children) {
      if (child is TextSpan) {
        characterCount += _getTextSpanCharacterCount(child);
      }
    }

    return characterCount;
  }

  int _getCharacterCount(List<Widget> widgets) {
    var count = 0;

    for (final widget in widgets) {
      if (widget is Text) {
        // Count characters in Text widgets
        final textSpan = widget.textSpan;
        if (textSpan != null && textSpan is TextSpan) {
          count += _getTextSpanCharacterCount(textSpan);
        } else {
          count += widget.data?.length ?? 0;
        }
      } else if (_hasChildren(widget)) {
        // Recursively count characters in child widgets
        final children = _getChildren(widget);
        count += _getCharacterCount(children);
      }
    }

    return count;
  }

  bool _hasChildren(Widget widget) =>
      widget is Wrap ||
      widget is Column ||
      widget is Row ||
      widget is SizedBox ||
      widget is Flexible ||
      widget is Expanded ||
      widget is Padding ||
      widget is Container;
}
