import 'package:djangoflow_remote_config/src/blocs/remote_config_cubit/remote_config_cubit_base.dart';

abstract class AppLaunchRemoteConfigCubit extends RemoteConfigCubitBase {
  AppLaunchRemoteConfigCubit(
    super.state, {
    required super.part,
    super.fallbackConfig,
    super.params,
  });
}
