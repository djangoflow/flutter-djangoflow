import 'package:djangoflow_remote_config/src/blocs/remote_config_cubit/remote_config_cubit_base.dart';
import 'package:djangoflow_remote_config/src/configuration/constants.dart';

class AppLaunchRemoteConfigCubit extends RemoteConfigCubitBase {
  AppLaunchRemoteConfigCubit(
    super.state, {
    super.fallbackConfig,
    super.params,
  }) : super(part: kAppLaunchRemoteConfigKey);

  @override
  Future<({Map<String, Object>? config})> loader({
    required String part,
    Map<String, Object>? params,
  }) async {
    // TODO: Add implementation here
    return (config: <String, Object>{});
  }
}
