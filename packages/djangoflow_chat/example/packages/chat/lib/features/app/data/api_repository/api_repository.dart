import 'package:chat/configurations/constants.dart';
import 'package:chat/utils/mixins/cubit_maybe_emit_mixin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';

import '../dio_interceptor.dart';

part 'api_repository.freezed.dart';
part 'api_repository.g.dart';
part 'api_repository.openapi.dart';

@OpenapiRepository(
  buildFor: Openapi,
  blocMixins: [BlocMixin(CubitMaybeEmit)],
  builderList: [
    RepositoryBuilder(AccountsApi),
    RepositoryBuilder(AuthApi),
    RepositoryBuilder(ChatApi),
  ],
  liveBasePath: kLiveBasePath,
  baseUrl: kSandboxBasePath,
  dioInterceptor: DioInterceptor,
  defaultPageSize: 25,
  defaultOffset: 0,
  sendTimeout: 15000,
  connectTimeout: 10000,
  receiveTimeout: 15000,
)
abstract class $ApiRepository {}
