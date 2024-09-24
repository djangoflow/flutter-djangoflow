import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef AppBuilderStateCallBack = Function(BuildContext context);

class AppBuilder extends StatelessWidget {
  const AppBuilder({
    required this.blocProviders,
    required this.builder,
    super.key,
    this.blocListeners,
    this.repositoryProviders,
    this.onInitState,
    this.onDispose,
  });

  /// Global blocProviders
  final List<BlocProvider> blocProviders;

  /// Global blocListeners
  final List<BlocListener>? blocListeners;
  // Global repository blocProviders
  final List<RepositoryProvider>? repositoryProviders;

  final AppBuilderStateCallBack? onInitState;
  final AppBuilderStateCallBack? onDispose;

  /// [WidgetBuilder] is a Flutter framework's callback signature.
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    final child = MultiBlocProvider(
      providers: blocProviders,
      // to provide current context where initState/dispose can access the blocProviders.
      child: _AppBuilderStateProvider(
        onInitState: onInitState,
        onDispose: onDispose,
        builder: (context) => blocListeners == null
            ? builder(context)
            : MultiBlocListener(
                listeners: blocListeners!,
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
  const _AppBuilderStateProvider({
    required this.builder,
    this.onInitState,
    this.onDispose,
  });

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
