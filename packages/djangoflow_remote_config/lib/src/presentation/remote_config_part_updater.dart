import 'package:djangoflow_remote_config/djangoflow_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [C] is the cubit type that extends [RemoteConfigCubit] and
/// [RemoteConfigState] is the state type of the cubit
/// [child] is the widget that will be wrapped by [BlocProvider]
///
/// [loadSilently] is a flag that indicates if the cubit should load
/// data silently or not. if [loadSilently] is true then the cubit will
/// not emit any `isLoading` change when it loads data.
///
/// [create] is a function that creates the cubit
///
/// [RemoteConfigPartUpdater] will listen to [AppLaunchRemoteConfigCubit]
/// and will call [cubit.load] if the part of the cubit is updated.
/// [RemoteConfigPartUpdater] will also call [cubit.load] if the part
/// of the cubit is not updated but [AppLaunchRemoteConfigCubit] is
/// updated and the part of the cubit is not loaded yet.
class RemoteConfigPartUpdater<C extends RemoteConfigCubit>
    extends StatefulWidget {
  const RemoteConfigPartUpdater({
    super.key,
    required this.create,
    this.child,
    this.loadSilently,
  });

  final C Function(BuildContext context) create;
  final Widget? child;
  final bool? loadSilently;

  @override
  State<RemoteConfigPartUpdater<C>> createState() =>
      _RemoteConfigPartUpdaterState<C>();
}

class _RemoteConfigPartUpdaterState<C extends RemoteConfigCubit>
    extends State<RemoteConfigPartUpdater<C>> {
  late final C cubit;

  @override
  void initState() {
    super.initState();
    cubit = widget.create(context);
    final appLaunchConfig =
        context.read<AppLaunchRemoteConfigCubit>().state.config;

    if (appLaunchConfig != null) {
      _maybeLoadData(
        updatesMap: appLaunchConfig.toAppLaunchDetails().updates?.parts,
        localLastUpdateTime: cubit.state.lastUpdate,
      );
    }
  }

  @override
  void dispose() {
    if (!cubit.isClosed) {
      cubit.close();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider<C>.value(
        value: cubit,
        child: BlocListener<AppLaunchRemoteConfigCubit, RemoteConfigState>(
          listener: (context, state) {
            final updatesMap =
                state.config?.toAppLaunchDetails().updates?.parts;
            final localLastUpdateTime = cubit.state.lastUpdate;
            _maybeLoadData(
              updatesMap: updatesMap,
              localLastUpdateTime: localLastUpdateTime,
            );
          },
          child: widget.child,
        ),
      );

  /// [updatesMap] is the map of parts and their last update timestamp
  /// [localLastUpdateTime] is the last update timestamp of the part
  /// we are interested in. if [updatesMap] has a newer timestamp then we
  /// should call [cubit.load] to get latest data.
  void _maybeLoadData({
    Map<String, DateTime?>? updatesMap,
    DateTime? localLastUpdateTime,
  }) {
    if (updatesMap != null) {
      final remoteLastUpdateTime = updatesMap[cubit.part];
      if (remoteLastUpdateTime != null) {
        if (localLastUpdateTime == null ||
            remoteLastUpdateTime.isAfter(localLastUpdateTime)) {
          cubit.load(
            lastUpdate: remoteLastUpdateTime,
            loadSilently: widget.loadSilently,
          );
        }
      }
    } else {
      // fetch data fallback
      cubit.load(
        loadSilently: widget.loadSilently,
      );
    }
  }
}
