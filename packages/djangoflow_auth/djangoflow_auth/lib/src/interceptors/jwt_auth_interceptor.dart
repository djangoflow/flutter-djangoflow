import 'package:dio/dio.dart';
import 'package:djangoflow_auth/src/blocs/auth_cubit/auth_cubit.dart';

class JwtAuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (AuthCubit.instance.state.token != null) {
      options.headers['Authorization'] =
          'Bearer ${AuthCubit.instance.state.token}';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      AuthCubit.instance.logout();
    }
    super.onError(err, handler);
  }
}
