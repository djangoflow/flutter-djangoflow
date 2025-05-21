import 'package:flutter/material.dart';
import 'package:djangoflow_markdown_truncate/src/base_markdown_truncate.dart';

/// THE [scrollPhysicsForLimitedLines] USED WHEN maxLines IS NOT NULL.
/// THE [scrollPhysicsForUnlimitedLines] USED WHEN maxLines IS NULL.
///
/// THE [paddingForLimitedLines] USED WHEN maxLines IS NOT NULL.
/// THE [paddingForUnlimitedLines] USED WHEN maxLines IS NULL.
class DjangoflowMarkdownLineTruncate extends BaseMarkdownTruncate {
  const DjangoflowMarkdownLineTruncate({
    required super.data,
    super.key,
    this.maxLines,
    this.scrollPhysicsForLimitedLines,
    this.scrollPhysicsForUnlimitedLines,
    this.paddingForLimitedLines,
    this.paddingForUnlimitedLines,
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
  });

  final int? maxLines;
  final EdgeInsetsGeometry? paddingForLimitedLines;
  final EdgeInsetsGeometry? paddingForUnlimitedLines;
  final ScrollPhysics? scrollPhysicsForLimitedLines;
  final ScrollPhysics? scrollPhysicsForUnlimitedLines;

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    if (maxLines == null) {
      return ListView(
        padding: paddingForUnlimitedLines,
        physics: scrollPhysicsForUnlimitedLines,
        shrinkWrap: shrinkWrap,
        children: children!,
      );
    }

    final flattenedTextSpan = _flattenTextSpan(children);

    return ListView(
      shrinkWrap: shrinkWrap,
      padding: paddingForLimitedLines,
      physics: scrollPhysicsForLimitedLines,
      children: [
        Text.rich(
          flattenedTextSpan,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis, // No ellipsis here, handled manually
        ),
      ],
    );
  }

  TextSpan _flattenTextSpan(List<Widget>? widgets) {
    final textSpans = <InlineSpan>[];

    for (final widget in widgets!) {
      if (widget is Text) {
        final textSpan = widget.textSpan ?? TextSpan(text: widget.data);
        textSpans.add(textSpan);
      } else if (_hasChildren(widget)) {
        final children = _getChildren(widget);
        textSpans.addAll(_flattenTextSpan(children).children ?? []);
      }
    }

    return TextSpan(children: textSpans);
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
}
