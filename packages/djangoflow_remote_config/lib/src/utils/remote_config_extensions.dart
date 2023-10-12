import 'package:djangoflow_remote_config/src/data/models/app_launch_details/app_launch_details.dart';

extension RemoteConfigExtensions on Map<String, dynamic> {
  AppLaunchDetails toAppLaunchDetails() => AppLaunchDetails.fromJson(this);
}
