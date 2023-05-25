import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef AppBuilderStateCallBack = Function(BuildContext context);

class AppBuilder extends StatelessWidget {
  const AppBuilder({
    super.key,
    required this.providers,
    this.listeners,
    required this.builder,
    this.repositoryProviders,
    this.onInitState,
    this.onDispose,
  });

  /// Global providers
  final List<BlocProvider> providers;

  /// Global listeners
  final List<BlocListener>? listeners;
  // Global repository providers
  final List<RepositoryProvider>? repositoryProviders;

  final AppBuilderStateCallBack? onInitState;
  final AppBuilderStateCallBack? onDispose;

  /// [WidgetBuilder] is a Flutter framework's callback signature.
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    final child = MultiBlocProvider(
      providers: providers,
      // to provide current context where initState/dispose can access the providers.
      child: _AppBuilderStateProvider(
        onInitState: onInitState,
        onDispose: onDispose,
        builder: (context) => listeners == null
            ? builder(context)
            : MultiBlocListener(
                listeners: listeners!,
                child: builder(context),
              ),
      ),
    );

    if (repositoryProviders == null) {
      return child;
    } else {
      return MultiRepositoryProvider(
        providers: repositoryProviders!,
        child: child,
      );
    }
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
