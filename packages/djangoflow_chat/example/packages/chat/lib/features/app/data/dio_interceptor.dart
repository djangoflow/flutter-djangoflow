import 'dart:io';

import 'package:chat/features/authentication/authentication.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/foundation.dart';
import 'package:openapi/openapi.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (AppCubit.instance.state.locale.isNotEmpty) {
      options.headers['Accept-Language'] = AppCubit.instance.state.locale;
    }
    if (AuthCubit.instance.state.token != null) {
      options.headers['Authorization'] =
          'Bearer ${AuthCubit.instance.state.token}';
    }
    if (!kIsWeb) {
      options.headers['User-Agent'] =
          '${AppCubit.packageInfo?.packageName}/${AppCubit.packageInfo?.version}';
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    DioError updatedError = err;
    if (updatedError.type == DioErrorType.badResponse) {
      if (updatedError.response != null) {
        if (updatedError.response!.statusCode == 503) {
          updatedError = updatedError.copyWith(
              message: 'Server maintenance - try again later');
        } else if (updatedError.response!.statusCode! >= 400 &&
            updatedError.response!.statusCode! < 500) {
          final response = updatedError.response;

          final errors = <Error>[];

          // Logout on authentication erorr
          if (updatedError.response?.statusCode == 401) {
            AuthCubit.instance.logout();
          }

          if (updatedError.response!.statusCode! == 404) {
            errors.add(
              Error(
                message: 'Not found',
                code: 'not_found',
              ),
            );
          } else {
            if (response != null && response.data['errors'] != null) {
              for (final e in response.data['errors']) {
                if (e['message'] is String) {
                  errors.add(
                    Error(
                      message: e['message'],
                      code: e['code'],
                      field: e['field'],
                    ),
                  );
                }
              }
            }
          }
          final data = ErrorResponse(
            errors: errors,
          );

          updatedError = updatedError.copyWith(
            message: errors.firstOrNull?.message,
            response: Response<ErrorResponse>(
              data: data,
              headers: response?.headers,
              requestOptions: response!.requestOptions,
              redirects: response.redirects,
              statusCode: response.statusCode,
              statusMessage: response.statusMessage,
              extra: response.extra,
            ),
          );
        } else if (updatedError.response?.statusCode == 500) {
          updatedError =
              updatedError.copyWith(message: 'Server fault - work in progress');
        }
      } else {
        updatedError = updatedError.copyWith(message: 'Server unreachable');
      }
    } else if (updatedError.type == DioErrorType.connectionTimeout ||
        updatedError.type == DioErrorType.receiveTimeout ||
        updatedError.type == DioErrorType.sendTimeout) {
      updatedError = updatedError.copyWith(
          message: 'Server connection timed out - check your connection');
    } else if (updatedError.type == DioErrorType.connectionError) {
      updatedError = updatedError.copyWith(
          message: 'Failed to connect to server - check your connection');
    } else if ((!kIsWeb &&
        updatedError.type == DioErrorType.unknown &&
        updatedError.error is SocketException)) {
      updatedError = updatedError.copyWith(message: 'You seem to be offline');
    }
    handler.next(updatedError);
  }
}
