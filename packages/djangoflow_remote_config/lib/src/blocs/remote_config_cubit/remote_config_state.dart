import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_config_state.freezed.dart';
part 'remote_config_state.g.dart';

@freezed
class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({
    @Default(false) bool isLoading,
    Map<String, Object>? config,
    DateTime? lastUpdate,
  }) = _RemoteConfigState;

  factory RemoteConfigState.fromJson(Map<String, dynamic> json) =>
      _$RemoteConfigStateFromJson(json);
}
