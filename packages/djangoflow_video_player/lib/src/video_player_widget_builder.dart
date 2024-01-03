import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

typedef VideoPlayerWidgetBuilderFunction = Widget Function(
  BuildContext context,
  VideoPlayerController? controller,
  bool isInitialized,
);

class VideoPlayerWidgetBuilder extends StatelessWidget {
  const VideoPlayerWidgetBuilder({
    required this.builder,
    super.key,
    this.url,
  });
  final String? url;
  final VideoPlayerWidgetBuilderFunction builder;

  @override
  Widget build(BuildContext context) => _VideoPlayerWidgetInternal(
        url: url,
        builder: builder,
      );
}

class _VideoPlayerWidgetInternal extends StatefulWidget {
  const _VideoPlayerWidgetInternal({
    required this.builder,
    this.url,
  });
  final String? url;
  final VideoPlayerWidgetBuilderFunction builder;

  @override
  __VideoPlayerWidgetInternalState createState() =>
      __VideoPlayerWidgetInternalState();
}

class __VideoPlayerWidgetInternalState
    extends State<_VideoPlayerWidgetInternal> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    if (widget.url != null) {
      final uri = Uri.tryParse(widget.url!);
      if (uri != null) {
        _controller = VideoPlayerController.networkUrl(uri)
          ..initialize().then((_) {
            setState(() {
              _isInitialized = true;
            });
          });
      }
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, _controller, _isInitialized);
}
