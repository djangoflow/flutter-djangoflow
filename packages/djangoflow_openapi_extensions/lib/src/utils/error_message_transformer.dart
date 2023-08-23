import 'dart:io';
import 'package:djangoflow_openapi_extensions/src/models/error_message_config.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';

class ErrorMessageTransformer {
  final ErrorMessageConfig config;

  ErrorMessageTransformer({this.config = const ErrorMessageConfig()});

  DioException transformErrorMessage(DioException err) {
    switch (err.type) {
      case DioExceptionType.badResponse:
        return _handleBadResponse(err);
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return _handleTimeout(err);
      case DioExceptionType.connectionError:
        return _handleConnectionError(err);
      case DioExceptionType.unknown:
        return _handleUnknownError(err);
      default:
        return err;
    }
  }

  DioException _handleBadResponse(DioException err) {
    if (err.response == null) {
      return err.copyWith(message: config.serverUnreachable);
    }

    final statusCode = err.response!.statusCode;
    final response = err.response!;
    final errors = <Error>[];

    if (statusCode == 503) {
      return err.copyWith(message: config.maintenance);
    } else if (statusCode != null && statusCode >= 400 && statusCode < 500) {
      final responseData = response.data as Map<String, dynamic>;

      // Extract errors
      if (responseData['errors'] != null) {
        for (final e in responseData['errors']) {
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

      return _createUpdatedError(
        err,
        message: errors.firstOrNull?.message,
        response: _createErrorResponse(response, errors),
      );
    } else if (statusCode == 500) {
      return err.copyWith(message: config.serverFault);
    }

    return err;
  }

  DioException _handleTimeout(DioException err) {
    return err.copyWith(
      message: config.connectionTimeout,
    );
  }

  DioException _handleConnectionError(DioException err) {
    return err.copyWith(
      message: config.connectionError,
    );
  }

  DioException _handleUnknownError(DioException err) {
    if (!kIsWeb && err.error is SocketException) {
      return err.copyWith(message: config.offline);
    }
    return err;
  }

  DioException _createUpdatedError(
    DioException err, {
    String? message,
    Response<ErrorResponse>? response,
  }) {
    return err.copyWith(
      message: message ?? err.message,
      response: response ?? err.response,
    );
  }

  Response<ErrorResponse> _createErrorResponse(
    Response response,
    List<Error> errors,
  ) {
    final data = ErrorResponse(errors: errors);
    return Response<ErrorResponse>(
      data: data,
      headers: response.headers,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }
}
