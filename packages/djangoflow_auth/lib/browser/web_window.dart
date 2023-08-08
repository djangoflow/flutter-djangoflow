import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
import 'package:universal_html/html.dart' as html;
import 'dart:math' as math;

class WebWindow {
  const WebWindow({
    this.hasScrollbars = false,
    this.isResizable = false,
    this.hasStatusBar = false,
    this.hasLocationbar = false,
    this.hasToolbar = false,
    this.hasMenubar = false,
    this.left = 300,
    this.top = 300,
    this.width = 420,
    this.height = 700,
    this.onMessage,
    // ignore: unused_element
    this.centerOnScreen = true,
    required this.onClosed,
    required this.uri,
    required this.title,
  });

  factory WebWindow.open({
    bool hasScrollbars = false,
    bool isResizable = false,
    bool hasStatusBar = false,
    bool hasLocationbar = false,
    bool hasToolbar = false,
    bool hasMenubar = false,
    int left = 300,
    int top = 300,
    int width = 360,
    int height = 600,
    void Function(html.MessageEvent event, void Function() close)? onMessage,
    required void Function() onClosed,
    required Uri uri,
    required String title,
  }) =>
      WebWindow(
        hasScrollbars: hasScrollbars,
        isResizable: isResizable,
        hasStatusBar: hasStatusBar,
        hasLocationbar: hasLocationbar,
        hasToolbar: hasToolbar,
        hasMenubar: hasMenubar,
        left: left,
        top: top,
        width: width,
        height: height,
        onClosed: onClosed,
        uri: uri,
        title: title,
        onMessage: onMessage,
      )..open();

  final bool hasScrollbars;
  final bool isResizable;
  final bool hasStatusBar;
  final bool hasLocationbar;
  final bool hasToolbar;
  final bool hasMenubar;
  final int left;
  final int top;
  final int width;
  final int height;
  final void Function() onClosed;
  final Uri uri;
  final String title;
  final bool centerOnScreen;
  final void Function(
    html.MessageEvent event,
    void Function() close,
  )? onMessage;

  Future<void> open() async {
    final window = html.window.open(uri.toString(), title, options);
    StreamSubscription<html.MessageEvent>? subscription;
    var skipEvent = false;
    if (onMessage != null) {
      subscription = html.window.onMessage.listen((event) {
        onMessage?.call(event, () {
          skipEvent = true;
          window.close();
        });
      });
    }
    await waitForClose(window);
    await subscription?.cancel();
    if (!skipEvent) {
      onClosed();
    }
  }

  Future<void> waitForClose(html.WindowBase window) async {
    while (window.closed != null && !window.closed!) {
      await Future<void>.delayed(const Duration(milliseconds: 200));
    }
  }

  math.Point<int> getPoint() {
    if (centerOnScreen) {
      final screenLeft = html.window.screenLeft ?? html.window.screenX;
      final screenTop = html.window.screenTop ?? html.window.screenY;
      final screenWidth = html.window.innerWidth ??
          html.document.documentElement?.clientWidth ??
          html.window.screen?.width;
      final screenHeight = html.window.innerHeight ??
          html.document.documentElement?.clientHeight ??
          html.window.screen?.height;

      if (screenLeft != null &&
          screenTop != null &&
          screenWidth != null &&
          screenHeight != null) {
        final left = (screenWidth - width) / 2;
        final top = (screenHeight - height) / 2;
        return math.Point<int>(left.toInt(), top.toInt());
      }
    }
    return math.Point(left, top);
  }

  String _buildOptions(int left, int top) =>
      'scrollbars=${toYesOrNo(yes: hasScrollbars)},resizable='
      '${toYesOrNo(yes: isResizable)},'
      'status=${toYesOrNo(yes: hasStatusBar)},'
      'location=${toYesOrNo(yes: hasLocationbar)},'
      'toolbar=${toYesOrNo(yes: hasToolbar)},'
      'menubar=${toYesOrNo(yes: hasMenubar)},'
      'width=$width,height=$height,left=$left,top=$top';

  String get options {
    final point = getPoint();
    return _buildOptions(point.x, point.y);
  }

  String toYesOrNo({required bool yes}) => yes ? 'yes' : 'no';
}
