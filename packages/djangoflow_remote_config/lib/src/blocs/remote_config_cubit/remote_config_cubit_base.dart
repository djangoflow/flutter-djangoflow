import 'package:dio/dio.dart';
import 'package:djangoflow_remote_config/src/blocs/remote_config_cubit/remote_config_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

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
