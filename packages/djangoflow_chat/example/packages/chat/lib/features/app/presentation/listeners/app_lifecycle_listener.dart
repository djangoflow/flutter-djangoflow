import 'package:flutter/material.dart';

class AppLifeCycleListener extends StatefulWidget {
  const AppLifeCycleListener({
    super.key,
    this.onLifeCycleStateChanged,
    required this.child,
  });

  final Function(AppLifecycleState appLifecycleState)? onLifeCycleStateChanged;
  final Widget child;
  @override
  State<AppLifeCycleListener> createState() => _AppLifeCycleListenerState();
}

class _AppLifeCycleListenerState extends State<AppLifeCycleListener>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    widget.onLifeCycleStateChanged?.call(state);
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
