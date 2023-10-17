import 'package:dio/dio.dart';
import 'package:djangoflow_bloc_extensions/djangoflow_bloc_extensions.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:djangoflow_remote_config/src/blocs/remote_config_cubit/remote_config_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

export 'remote_config_state.dart';

/// The base class for all remote config cubits.
/// [fallbackConfig] is the default config that will be used if data fails to
/// load from the server.
///
/// [part] defines the subset of the remote config that we are interested in.
///
/// [params] is a map of key value pairs that will be passed to the server for
/// filtering the data.
///
/// [useOnlyFallbackOnError] if true will only use the [fallbackConfig] if the data
/// fails to load from the server. If false the [fallbackConfig] will be used
/// only if the hydrated [state] is null.
///
/// [load] is the function that will be called to load the data from the
/// server or will use hydrated state or fallbackConfig on error.
abstract class RemoteConfigCubit extends HydratedCubit<RemoteConfigState>
    with SafeEmitMixin {
  RemoteConfigCubit(
    super.state, {
    this.fallbackConfig,
    required this.part,
    this.params,
    this.useOnlyFallbackOnError = false,
  });
  RemoteconfigApi? remoteconfigApi;
  final Map<String, Object>? fallbackConfig;

  final bool useOnlyFallbackOnError;

  /// [params] should be a [Map].
  /// eg. {"app": "com.roblevine.app"} or
  /// {"app": "com.roblevine.app_taxi"} etc
  final Map<String, Object>? params;
  final String part;

  /// [lastUpdate] is the timestamp provided by app_launch part to know when was the last time
  /// config was updated. if [lastUpdate] is older then we should call [load] to get latest data
  /// otherwise can be used via hydrated state.
  Future<void> load({DateTime? lastUpdate, bool? loadSilently}) async {
    await _remoteConfigApiChecker(() async {
      try {
        if (loadSilently != true) {
          emit(state.copyWith(isLoading: true));
        }

        final result = (await remoteconfigApi!.remoteconfigRetrieve(
          part_: part,
          params: params,
        ))
            .data;

        emit(
          state.copyWith(
            config: result?.part_ ?? fallbackConfig,
            isLoading: false,
            lastUpdate: lastUpdate,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            isLoading: false,
            config: useOnlyFallbackOnError
                ? fallbackConfig
                : state.config ?? fallbackConfig,
          ),
        );
        if (e is! DioException) rethrow;
      }
    });
  }

  Future<T> _remoteConfigApiChecker<T>(Future<T> Function() function) async {
    assert(remoteconfigApi != null, 'remoteconfigApi is null');
    return await function();
  }

  @override
  RemoteConfigState? fromJson(Map<String, dynamic> json) =>
      RemoteConfigState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(RemoteConfigState state) => state.toJson();
}
