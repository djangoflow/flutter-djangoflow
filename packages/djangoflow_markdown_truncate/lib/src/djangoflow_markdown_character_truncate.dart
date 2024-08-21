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

  Widget buildRichTextFromTextWidgets(List<Text> textWidgets) {
    final spans = <InlineSpan>[];
    var totalCharacters = 0;

    for (final textWidget in textWidgets) {
      final span = textWidget.textSpan;
      if (span != null && span is TextSpan) {
        final trimmedTextSpan = _trimTextSpan(span, totalCharacters);
        spans.add(trimmedTextSpan);
        totalCharacters += _getCharacterCount(trimmedTextSpan);
        if (maxCharacters != null && totalCharacters >= maxCharacters!) {
          break;
        }
      } else if (textWidget.data != null) {
        final trimmedText = textWidget.data!.replaceAll('\n', ' ').trimRight();
        final textSpan = TextSpan(text: trimmedText, style: textWidget.style);
        totalCharacters += trimmedText.length;
        if (maxCharacters != null && totalCharacters >= maxCharacters!) {
          final truncatedText = trimmedText.substring(
            0,
            trimmedText.length - (totalCharacters - maxCharacters!),
          );
          spans.add(TextSpan(text: truncatedText, style: textWidget.style));
          spans.addAll(buildReadMoreSpan(styleSheet?.p, styleSheet?.a));
          break;
        }
        spans.add(textSpan);
      }
    }

    // Check if we need to append "Read more" at the end
    if (totalCharacters >= maxCharacters!) {
      spans.addAll(buildReadMoreSpan(styleSheet?.p, styleSheet?.a));
    }

    return RichText(
      text: TextSpan(children: spans),
      textAlign: TextAlign.start,
      softWrap: true,
    );
  }

  TextSpan _trimTextSpan(TextSpan textSpan, int totalCharacters) {
    int localTotalCharacters = totalCharacters;

    if (maxCharacters == null) {
      return textSpan;
    }

    final currentTextLength = textSpan.text?.length ?? 0;
    if (localTotalCharacters + currentTextLength > maxCharacters!) {
      final remainingCharacters = maxCharacters! - localTotalCharacters;
      return TextSpan(
        text: textSpan.text?.substring(0, remainingCharacters) ?? '',
        style: textSpan.style,
      );
    }

    if (textSpan.children != null && textSpan.children!.isNotEmpty) {
      final trimmedChildren = <InlineSpan>[];
      for (final span in textSpan.children!) {
        if (localTotalCharacters >= maxCharacters!) {
          break;
        }
        if (span is TextSpan) {
          final trimmedChild = _trimTextSpan(span, localTotalCharacters);
          localTotalCharacters += _getCharacterCount(trimmedChild);
          trimmedChildren.add(trimmedChild);
        } else {
          trimmedChildren.add(span);
        }
      }

      return TextSpan(
        text: textSpan.text,
        style: textSpan.style,
        children: trimmedChildren,
      );
    } else {
      return textSpan;
    }
  }

  int _getCharacterCount(TextSpan textSpan) => textSpan.toPlainText().length;

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    if (maxCharacters == null) {
      return ListView(
        shrinkWrap: shrinkWrap,
        children: children!,
      );
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        final textWidgets = <Text>[];
        for (final child in children!) {
          textWidgets.addAll(findWidgetsOfType<Text>(child));
        }

        if (textWidgets.isNotEmpty) {
          return buildRichTextFromTextWidgets(textWidgets);
        } else {
          return Container();
        }
      },
    );
  }
}
