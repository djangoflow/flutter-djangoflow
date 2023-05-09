import 'package:flutter/material.dart';

class ZoomInAnimatedContainer extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final VoidCallback? onCompleted;
  const ZoomInAnimatedContainer(
      {super.key,
      required this.child,
      required this.duration,
      this.onCompleted});

  @override
  State<ZoomInAnimatedContainer> createState() =>
      _ZoomInAnimatedContainerState();
}

class _ZoomInAnimatedContainerState extends State<ZoomInAnimatedContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();
    _controller.addListener(() {
      if (_controller.isCompleted) {
        widget.onCompleted?.call();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaleTransition(
        scale: _animation,
        child: widget.child,
      );
}
