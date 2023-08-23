import 'package:dio/dio.dart';
import 'package:djangoflow_openapi_extensions/src/utils/error_message_transformer.dart';

class ErrorInterceptor extends Interceptor {
  final ErrorMessageTransformer errorMessageTransformer;

  ErrorInterceptor({required this.errorMessageTransformer});
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final transformedError = errorMessageTransformer.transformErrorMessage(err);
    super.onError(transformedError, handler);
  }
}
