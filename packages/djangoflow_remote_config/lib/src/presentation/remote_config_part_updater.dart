import 'package:djangoflow_remote_config/src/blocs/app_launch_remote_config_cubit/app_launch_remote_config_cubit.dart';
import 'package:djangoflow_remote_config/src/utils/map_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/remote_config_cubit/remote_config_cubit_base.dart';
import '../blocs/remote_config_cubit/remote_config_state.dart';

class RemoteConfigPartUpdater<C extends RemoteConfigCubitBase>
    extends StatefulWidget {
  const RemoteConfigPartUpdater({
    super.key,
    required this.create,
    this.child,
  });

  final C Function(BuildContext context) create;
  final Widget? child;

  @override
  State<RemoteConfigPartUpdater<C>> createState() =>
      _RemoteConfigPartUpdaterState<C>();
}

class _RemoteConfigPartUpdaterState<C extends RemoteConfigCubitBase>
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
        localLastUpdateTimeStamp: cubit.state.lastUpdate,
      );
    }
  }

  @override
  void dispose() {
    if (cubit.isClosed == false) {
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
            final localLastUpdateTimeStamp = cubit.state.lastUpdate;
            _maybeLoadData(
              updatesMap: updatesMap,
              localLastUpdateTimeStamp: localLastUpdateTimeStamp,
            );
          },
          child: widget.child,
        ),
      );

  /// [updatesMap] is the map of parts and their last update timestamp
  /// [localLastUpdateTimeStamp] is the last update timestamp of the part
  /// we are interested in. if [updatesMap] has a newer timestamp then we
  /// should call [cubit.load] to get latest data.
  void _maybeLoadData({
    Map<String, DateTime?>? updatesMap,
    DateTime? localLastUpdateTimeStamp,
  }) {
    if (updatesMap != null) {
      final remoteLastUpdateTimeStamp = updatesMap[cubit.part];
      if (remoteLastUpdateTimeStamp != null) {
        if (localLastUpdateTimeStamp == null ||
            remoteLastUpdateTimeStamp.isAfter(localLastUpdateTimeStamp)) {
          cubit.load(lastUpdate: remoteLastUpdateTimeStamp);
        }
      }
    } else {
      // fetch data fallback
      cubit.load();
    }
  }
}