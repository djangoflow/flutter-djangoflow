import 'package:flutter/material.dart';

class DjangoflowAppSnackbar {
  factory DjangoflowAppSnackbar() => _instance;

  DjangoflowAppSnackbar._internal();
  static DjangoflowAppSnackbar get instance => _instance;
  static final DjangoflowAppSnackbar _instance =
      DjangoflowAppSnackbar._internal();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static void showInfo(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 4),
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
  }) {
    if (scaffoldMessengerKey.currentState?.mounted == true) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(
          shape: shape,
          margin: margin,
          behavior: behavior,
          dismissDirection: dismissDirection,
          duration: duration,
          content: Text(message),
          action: action ??
              const SnackBarAction(
                label: 'Dismiss',
                onPressed: DjangoflowAppSnackbar.dismiss,
              ),
        ),
      );
    }
  }

  static void showError(
    String message, {
    SnackBarAction? action,
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
  }) {
    if (scaffoldMessengerKey.currentState?.mounted == true) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          shape: shape,
          margin: margin,
          behavior: behavior,
          dismissDirection: dismissDirection,
          content: Text(message),
          action: action ??
              const SnackBarAction(
                label: 'Dismiss',
                onPressed: DjangoflowAppSnackbar.dismiss,
                textColor: Colors.white,
              ),
          duration: const Duration(seconds: 15),
        ),
      );
    }
  }

  // ignore: long-parameter-list
  static void showInAppNotification({
    String? title,
    String? body,
    SnackBarAction? action,
    TextStyle? titleTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    TextStyle? bodyTextStyle,
    Duration duration = const Duration(seconds: 12),
    EdgeInsetsGeometry? margin,
    SnackBarBehavior? behavior,
    ShapeBorder? shape,
    DismissDirection dismissDirection = DismissDirection.down,
  }) {
    if (scaffoldMessengerKey.currentState?.mounted == true) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(
          duration: duration,
          shape: shape,
          margin: margin,
          behavior: behavior,
          dismissDirection: dismissDirection,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title,
                  style: titleTextStyle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              if (body != null)
                Text(
                  body,
                  style: bodyTextStyle,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
          action: action ??
              const SnackBarAction(
                label: 'Dismiss',
                onPressed: DjangoflowAppSnackbar.dismiss,
              ),
        ),
      );
    }
  }

  static void dismiss() {
    scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
  }

  static void dismissAll() {
    scaffoldMessengerKey.currentState?.clearSnackBars();
  }
}
