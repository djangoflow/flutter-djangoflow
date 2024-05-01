import 'package:dio/dio.dart';
import 'package:djangoflow_auth/djangoflow_auth.dart';

class JwtAuthInterceptor extends Interceptor {
  JwtAuthInterceptor({required this.authCubit});

  final HydratedAuthCubitBase authCubit;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (authCubit.state.token != null) {
      options.headers['Authorization'] = 'Bearer ${authCubit.state.token}';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      final isSignedIn = authCubit.state.token != null;
      if (isSignedIn) {
        authCubit.logout();
      }
    }
    super.onError(err, handler);
  }
}
