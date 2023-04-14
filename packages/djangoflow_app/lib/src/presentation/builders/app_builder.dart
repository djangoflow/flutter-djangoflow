import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef AppBuilderStateCallBack = Function(BuildContext context);

class AppBuilder extends StatelessWidget {
  const AppBuilder({
    super.key,
    this.providers = const [],
    this.listeners = const [],
    this.repositoryProviders = const [],
    required this.builder,
    this.onInitState,
    this.onDispose,
  });

  /// Global providers
  final List<BlocProvider> providers;

  /// Global listeners
  final List<BlocListener> listeners;
  // Global repository providers
  final List<RepositoryProvider> repositoryProviders;

  /// [WidgetBuilder] is a Flutter framework's callback signature.
  final WidgetBuilder builder;

  final AppBuilderStateCallBack? onInitState;
  final AppBuilderStateCallBack? onDispose;

  @override
  Widget build(BuildContext context) {
    Widget widget = _AppBuilderStateProvider(
      onInitState: onInitState,
      onDispose: onDispose,
      builder: (context) {
        Widget child = builder(context);
        if (listeners.isNotEmpty) {
          child = MultiBlocListener(
            listeners: listeners,
            child: child,
          );
        }

        return child;
      },
    );

    if (providers.isNotEmpty) {
      widget = MultiBlocProvider(
        providers: providers,
        child: widget,
      );
    }

    if (repositoryProviders.isNotEmpty) {
      widget = MultiRepositoryProvider(
        providers: repositoryProviders,
        child: widget,
      );
    }

    return widget;
  }
}

class _AppBuilderStateProvider extends StatefulWidget {
  const _AppBuilderStateProvider(
      {this.onInitState, this.onDispose, required this.builder});

  /// [WidgetBuilder] is a Flutter framework's callback signature
  final AppBuilderStateCallBack? onInitState;
  final AppBuilderStateCallBack? onDispose;
  final WidgetBuilder builder;
  @override
  State<_AppBuilderStateProvider> createState() =>
      __AppBuilderStateProviderState();
}

class __AppBuilderStateProviderState extends State<_AppBuilderStateProvider> {
  @override
  void initState() {
    widget.onInitState?.call(context);
    super.initState();
  }

  @override
  void dispose() {
    widget.onDispose?.call(context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.builder(context);
}
