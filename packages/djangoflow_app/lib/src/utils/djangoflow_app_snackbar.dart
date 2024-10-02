import 'package:flutter/material.dart';

class DjangoflowAppSnackbar {
  factory DjangoflowAppSnackbar() => _instance;

  DjangoflowAppSnackbar._internal();
  static DjangoflowAppSnackbar get instance => _instance;
  static final DjangoflowAppSnackbar _instance =
      DjangoflowAppSnackbar._internal();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static SnackBarThemeData? _snackBarTheme;

  static void initialize({required SnackBarThemeData snackBarTheme}) {
    _snackBarTheme = snackBarTheme;
  }

  static void showInfo(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 4),
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
    Color? backgroundColor,
    TextStyle? textStyle,
  }) {
    _showSnackBar(
      message,
      action: action,
      duration: duration,
      margin: margin,
      behavior: behavior,
      shape: shape,
      dismissDirection: dismissDirection,
      backgroundColor: backgroundColor ?? _snackBarTheme?.backgroundColor,
      textStyle: textStyle ?? _snackBarTheme?.contentTextStyle,
    );
  }

  static void showError(
    String message, {
    SnackBarAction? action,
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
    Color? backgroundColor,
    TextStyle? textStyle,
  }) {
    _showSnackBar(
      message,
      action: action,
      duration: const Duration(seconds: 15),
      margin: margin,
      behavior: behavior,
      shape: shape,
      dismissDirection: dismissDirection,
      backgroundColor: backgroundColor ?? Colors.red,
      textStyle: textStyle ??
          _snackBarTheme?.contentTextStyle?.copyWith(color: Colors.white),
    );
  }

  static void showInAppNotification({
    String? title,
    String? body,
    SnackBarAction? action,
    TextStyle? titleTextStyle,
    TextStyle? bodyTextStyle,
    Duration duration = const Duration(seconds: 12),
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
    Color? backgroundColor,
  }) {
    if (scaffoldMessengerKey.currentState?.mounted == true) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(
          duration: duration,
          shape: shape ?? _snackBarTheme?.shape,
          margin: margin ?? _snackBarTheme?.insetPadding,
          behavior: behavior ?? _snackBarTheme?.behavior,
          dismissDirection: dismissDirection,
          backgroundColor: backgroundColor ?? _snackBarTheme?.backgroundColor,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title,
                  style: titleTextStyle ??
                      _snackBarTheme?.contentTextStyle
                          ?.copyWith(fontWeight: FontWeight.bold),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              if (body != null)
                Text(
                  body,
                  style: bodyTextStyle ?? _snackBarTheme?.contentTextStyle,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
          action: action ?? _buildDismissAction(),
        ),
      );
    }
  }

  static void _showSnackBar(
    String message, {
    required DismissDirection dismissDirection,
    required Duration duration,
    SnackBarAction? action,
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    Color? backgroundColor,
    TextStyle? textStyle,
  }) {
    if (scaffoldMessengerKey.currentState?.mounted == true) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(
          duration: duration,
          shape: shape ?? _snackBarTheme?.shape,
          margin: margin ?? _snackBarTheme?.insetPadding,
          behavior: behavior ?? _snackBarTheme?.behavior,
          dismissDirection: dismissDirection,
          backgroundColor: backgroundColor,
          content: Text(message, style: textStyle),
          action: action ?? _buildDismissAction(),
        ),
      );
    }
  }

  static SnackBarAction _buildDismissAction() => SnackBarAction(
        label: 'Dismiss',
        onPressed: dismiss,
        textColor: _snackBarTheme?.actionTextColor,
      );

  static void dismiss() {
    scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
  }

  static void dismissAll() {
    scaffoldMessengerKey.currentState?.clearSnackBars();
  }
}
