import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:djangoflow_video_player/src/video_player_widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

typedef ErrorWidgetBuilder = Widget Function(
  BuildContext context,
  Object error,
);
typedef ThumbnailWidgetBuilder = Widget Function(
  BuildContext context,
  String thumbnailUrl,
);

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({
    required this.url,
    this.thumbnailUrl,
    this.errorBuilder,
    this.loadingIndicator,
    this.thumbnailBuilder,
    this.blurRadius = 10.0,
    this.playIcon = Icons.play_circle,
    this.pauseIcon = Icons.pause_circle,
    this.volumeUpIcon = Icons.volume_up,
    this.volumeOffIcon = Icons.volume_off,
    super.key,
  });
  final String url;
  final String? thumbnailUrl;
  final ErrorWidgetBuilder? errorBuilder;
  final Widget? loadingIndicator;
  final ThumbnailWidgetBuilder? thumbnailBuilder;
  final double blurRadius;
  final IconData playIcon;
  final IconData pauseIcon;
  final IconData volumeUpIcon;
  final IconData volumeOffIcon;

  @override
  Widget build(BuildContext context) => VideoPlayerWidgetBuilder(
        url: url,
        builder: (context, controller, isInitialized) {
          if (controller == null || !isInitialized) {
            return loadingIndicator ??
                const Center(child: CircularProgressIndicator.adaptive());
          }
          return AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: _VideoPlayerUI(
              controller: controller,
              thumbnailUrl: thumbnailUrl,
              thumbnailBuilder: thumbnailBuilder,
              blurRadius: blurRadius,
              playIcon: playIcon,
              pauseIcon: pauseIcon,
              volumeUpIcon: volumeUpIcon,
              volumeOffIcon: volumeOffIcon,
            ),
          );
        },
        errorBuilder: errorBuilder ??
            (context, error) => Center(
                  child: Text(
                    'Error loading video',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
      );
}

class _VideoPlayerUI extends StatefulWidget {
  const _VideoPlayerUI({
    required this.controller,
    required this.blurRadius,
    required this.playIcon,
    required this.pauseIcon,
    required this.volumeUpIcon,
    required this.volumeOffIcon,
    this.thumbnailUrl,
    this.thumbnailBuilder,
  });
  final VideoPlayerController controller;
  final String? thumbnailUrl;
  final ThumbnailWidgetBuilder? thumbnailBuilder;
  final double blurRadius;
  final IconData playIcon;
  final IconData pauseIcon;
  final IconData volumeUpIcon;
  final IconData volumeOffIcon;

  @override
  __VideoPlayerUIState createState() => __VideoPlayerUIState();
}

class __VideoPlayerUIState extends State<_VideoPlayerUI> {
  ValueNotifier<bool>? _isPlaying;
  ValueNotifier<bool>? _isMuted;

  @override
  void initState() {
    super.initState();
    _isPlaying = ValueNotifier(false);
    _isMuted = ValueNotifier(false);
    widget.controller.addListener(_listener);
  }

  void _listener() {
    _isPlaying?.value = widget.controller.value.isPlaying;
    _isMuted?.value = widget.controller.value.volume == 0;
  }

  @override
  void didUpdateWidget(_VideoPlayerUI oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_listener);
      widget.controller.addListener(_listener);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listener);
    _isPlaying?.dispose();
    _isMuted?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        if (widget.thumbnailUrl != null)
          Positioned.fill(
            child:
                widget.thumbnailBuilder?.call(context, widget.thumbnailUrl!) ??
                    _ThumbnailWidget(
                      thumbnailUrl: widget.thumbnailUrl!,
                      blurRadius: widget.blurRadius,
                    ),
          ),
        Positioned.fill(
          child: Center(
            child: GestureDetector(
              onTap: () => _playPause(widget.controller),
              child: AbsorbPointer(
                absorbing: true,
                child: VideoPlayer(widget.controller),
              ),
            ),
          ),
        ),
        if (_isPlaying != null)
          ValueListenableBuilder<bool>(
            valueListenable: _isPlaying!,
            builder: (_, isPlaying, __) => isPlaying
                ? const SizedBox()
                : IgnorePointer(
                    child: Container(
                      width: double.infinity,
                      color: theme.colorScheme.surface.withOpacity(0.2),
                      child: Center(
                        child: Icon(
                          widget.playIcon,
                          size: 48,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
          ),
        if (_isMuted != null)
          Positioned(
            bottom: 16,
            right: 16,
            child: ValueListenableBuilder<bool>(
              valueListenable: _isMuted!,
              builder: (_, isMuted, __) => IconButton(
                icon: Icon(
                  isMuted ? widget.volumeOffIcon : widget.volumeUpIcon,
                  color: theme.colorScheme.primary,
                ),
                onPressed: () => _toggleMute(widget.controller),
              ),
            ),
          ),
      ],
    );
  }

  void _playPause(VideoPlayerController controller) {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
  }

  void _toggleMute(VideoPlayerController controller) {
    if (controller.value.volume == 0) {
      controller.setVolume(1);
    } else {
      controller.setVolume(0);
    }
  }
}

class _ThumbnailWidget extends StatelessWidget {
  const _ThumbnailWidget({
    required this.thumbnailUrl,
    required this.blurRadius,
  });
  final String thumbnailUrl;
  final double blurRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        image: DecorationImage(
          image: CachedNetworkImageProvider(thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurRadius, sigmaY: blurRadius),
        child: Container(color: Colors.transparent),
      ),
    );
  }
}
