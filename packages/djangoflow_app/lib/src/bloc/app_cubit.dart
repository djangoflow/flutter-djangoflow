import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_cubit.freezed.dart';
part 'app_cubit.g.dart';

enum AppEnvironment { live, sandbox }

@freezed
class AppState with _$AppState {
  // AppState should *only* contain fields that require MaterialApp re-building
  const factory AppState({
    @Default(true) bool firstRun,
    @Default(AppEnvironment.live) AppEnvironment environment,
    @Default('en') String locale,
    @Default(Brightness.light) Brightness brightness,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

class AppCubit extends HydratedCubit<AppState> {
  static AppCubit get instance => _instance;
  static final AppCubit _instance = AppCubit._internal();
  late PackageInfo packageInfo;

  AppCubit._internal() : super(const AppState()) {
    _init();
  }

  Future<void> _init() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  void firstRunDone() => emit(state.copyWith(firstRun: false));

  void toggleBrightness() => emit(
        state.copyWith(
          brightness: state.brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
        ),
      );

  void toggleEnvironment() => emit(
        state.copyWith(
          environment: state.environment == AppEnvironment.live
              ? AppEnvironment.sandbox
              : AppEnvironment.live,
        ),
      );

  @override
  AppState? fromJson(Map<String, dynamic> json) => AppState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppState state) => state.toJson();
}
