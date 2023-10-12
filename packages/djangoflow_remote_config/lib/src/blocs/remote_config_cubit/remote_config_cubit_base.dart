import 'package:dio/dio.dart';
import 'package:djangoflow_remote_config/src/blocs/remote_config_cubit/remote_config_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

/// The base class for all remote config cubits.
/// [fallbackConfig] is the default config that will be used if data fails to
/// load from the server.
///
/// [part] defines the subset of the remote config that we are interested in.
///
/// [params] is a map of key value pairs that will be passed to the server for
/// filtering the data.
///
/// [loader] is the function that will be called to load the data from the
/// server.
abstract class RemoteConfigCubitBase extends HydratedCubit<RemoteConfigState> {
  RemoteConfigCubitBase(
    super.state, {
    this.fallbackConfig,
    required this.part,
    this.params,
  });

  final Map<String, Object>? fallbackConfig;
  final Map<String, Object>? params;
  final String part;

  Future<({Map<String, Object>? config})> loader({
    required String part,
    Map<String, Object>? params,
  });

  /// load data from the server and update the state. If the remote config is
  /// null or empty the previous [state] or the [fallbackConfig] will be used.
  Future<void> load({DateTime? lastUpdate}) async {
    try {
      emit(state.copyWith(isLoading: true));
      final result = await loader(part: part, params: params);

      emit(
        state.copyWith(
          config: result.config ?? fallbackConfig,
          isLoading: false,
          lastUpdate: lastUpdate,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          config: state.config ?? fallbackConfig,
        ),
      );
      if (e is! DioException) rethrow;
    }
  }

  @override
  RemoteConfigState? fromJson(Map<String, dynamic> json) =>
      RemoteConfigState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(RemoteConfigState state) => state.toJson();
}
