import 'package:djangoflow_markdown_truncate/src/base_markdown_truncate.dart';
import 'package:flutter/material.dart';

class DjangoflowMarkdownLineTruncate extends BaseMarkdownTruncate {
  const DjangoflowMarkdownLineTruncate({
    required super.data,
    super.key,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
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

  final int? maxLines;
  final TextOverflow overflow;

  Widget buildLineLimitedRichText(
      List<Text> textWidgets, BoxConstraints constraints) {
    final combinedSpan = TextSpan(
      children: textWidgets
          .map((textWidget) => textWidget.textSpan)
          .whereType<InlineSpan>()
          .toList(),
    );

    final textPainter = TextPainter(
      text: combinedSpan,
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: constraints.maxWidth);

    if (textPainter.didExceedMaxLines) {
      final truncatedSpans = <InlineSpan>[];
      var currentOffset = 0;

      for (final span in combinedSpan.children!) {
        if (span is TextSpan) {
          final spanTextLength = span.toPlainText().length;
          final lastPosition = textPainter
              .getPositionForOffset(
                Offset(constraints.maxWidth, textPainter.height),
              )
              .offset;

          if (currentOffset + spanTextLength > lastPosition) {
            final remainingLength = lastPosition - currentOffset;
            if (remainingLength > 0) {
              truncatedSpans.add(TextSpan(
                text: span.text?.substring(0, remainingLength) ?? '',
                style: span.style,
              ));
            }
            truncatedSpans
                .addAll(buildReadMoreSpan(styleSheet?.p, styleSheet?.a));
            break;
          } else {
            truncatedSpans.add(span);
          }

          currentOffset += spanTextLength;
        }
      }

      return RichText(
        text: TextSpan(children: truncatedSpans),
        textAlign: TextAlign.start,
        softWrap: true,
      );
    } else {
      return RichText(
        text: combinedSpan,
        textAlign: TextAlign.start,
        softWrap: true,
      );
    }
  }

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    if (maxLines == null || children == null || children.isEmpty) {
      return ListView(
        shrinkWrap: shrinkWrap,
        children: children ?? [],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final textWidgets = <Text>[];
        for (final child in children) {
          textWidgets.addAll(findWidgetsOfType<Text>(child));
        }

        if (textWidgets.isNotEmpty) {
          return buildLineLimitedRichText(textWidgets, constraints);
        } else {
          return Container();
        }
      },
    );
  }
}
