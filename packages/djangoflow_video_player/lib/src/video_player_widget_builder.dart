import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

typedef VideoPlayerWidgetBuilderFunction = Widget Function(
  BuildContext context,
  VideoPlayerController? controller,
  bool isInitialized,
);

typedef VideoPlayerErrorWidgetBuilder = Widget Function(
  BuildContext context,
  Object error,
);

class VideoPlayerWidgetBuilder extends StatefulWidget {
  const VideoPlayerWidgetBuilder({
    required this.builder,
    super.key,
    this.url,
    this.errorBuilder,
    this.onInitialize,
    this.formatHint,
    this.closedCaptionFile,
    this.videoPlayerOptions,
    this.httpHeaders = const <String, String>{},
  });

  final String? url;
  final VideoPlayerWidgetBuilderFunction builder;
  final VideoPlayerErrorWidgetBuilder? errorBuilder;
  final Future Function(VideoPlayerController controller)? onInitialize;
  final VideoFormat? formatHint;
  final Future<ClosedCaptionFile>? closedCaptionFile;
  final VideoPlayerOptions? videoPlayerOptions;
  final Map<String, String> httpHeaders;

  @override
  State<VideoPlayerWidgetBuilder> createState() =>
      _VideoPlayerWidgetBuilderState();
}

class _VideoPlayerWidgetBuilderState extends State<VideoPlayerWidgetBuilder> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  Object? _error;

  @override
  void initState() {
    super.initState();
    _initializeAndListen();
  }

  Future<void> _initializeAndListen() async {
    if (widget.url != null) {
      final uri = Uri.tryParse(widget.url!);
      if (uri != null) {
        _controller = VideoPlayerController.networkUrl(
          uri,
          closedCaptionFile: widget.closedCaptionFile,
          formatHint: widget.formatHint,
          videoPlayerOptions: widget.videoPlayerOptions,
          httpHeaders: widget.httpHeaders,
        )..initialize().then((_) async {
            if (widget.onInitialize != null) {
              await widget.onInitialize!(_controller!);
            }
            setState(() {
              _isInitialized = true;
            });
          }).catchError((error) {
            setState(() {
              _error = error;
            });
            debugPrint('Error initializing video player: $error');
          });

        _controller?.addListener(_listener);
      }
    }
  }

  void _listener() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller?.removeListener(_listener);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null && widget.errorBuilder != null) {
      return widget.errorBuilder!(context, _error!);
    }

    return widget.builder(context, _controller, _isInitialized);
  }
}
