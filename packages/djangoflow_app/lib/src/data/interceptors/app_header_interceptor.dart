import 'package:dio/dio.dart';
import 'package:djangoflow_app/src/bloc/app_cubit.dart';
import 'package:flutter/foundation.dart';

/// AppHeaderInterceptor is a dio [Interceptor] which adds the following headers to every request via [AppCubit] :
/// - Accept-Language: The current locale of the app
/// - User-Agent: The package name and version of the app
class AppHeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (AppCubit.instance.state.locale.isNotEmpty) {
      options.headers['Accept-Language'] = AppCubit.instance.state.locale;
    }

    if (!kIsWeb) {
      options.headers['User-Agent'] =
          '${AppCubit.packageInfo?.packageName}/${AppCubit.packageInfo?.version}';
    }
    super.onRequest(options, handler);
  }
}
