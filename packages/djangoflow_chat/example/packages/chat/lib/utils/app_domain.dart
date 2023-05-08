import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';

class AppDomain {
  static AppEnvironment get preferredEnvironment =>
      (kDebugMode || (kIsWeb && Uri.base.host.endsWith('.dev'))
          ? AppEnvironment.sandbox
          : AppEnvironment.live);
}
