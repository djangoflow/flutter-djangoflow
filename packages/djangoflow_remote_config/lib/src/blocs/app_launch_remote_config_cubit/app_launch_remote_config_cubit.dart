import 'package:djangoflow_remote_config/djangoflow_remote_config.dart';

class AppLaunchRemoteConfigCubit extends RemoteConfigCubit {
  AppLaunchRemoteConfigCubit(
    super.state, {
    super.fallbackConfig,
    super.params,
    super.useOnlyFallbackOnError,
  }) : super(part: kAppLaunchRemoteConfigKey);
}
