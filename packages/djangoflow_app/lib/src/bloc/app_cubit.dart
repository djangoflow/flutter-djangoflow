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
    @Default(ThemeMode.light) ThemeMode themeMode,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

class AppCubit extends HydratedCubit<AppState> {
  @visibleForTesting
  AppCubit.internal() : super(_initialState ?? const AppState());
  static AppCubit get instance => _instance;
  static final AppCubit _instance = AppCubit.internal();
  static PackageInfo? packageInfo;

  static AppState? _initialState;
  static set initialState(AppState? appState) => _initialState = appState;

  void firstRunDone() => emit(state.copyWith(firstRun: false));

  void updateThemeMode(ThemeMode themeMode) => emit(
        state.copyWith(
          themeMode: themeMode,
        ),
      );

  void toggleEnvironment() => emit(
        state.copyWith(
          environment: state.environment == AppEnvironment.live
              ? AppEnvironment.sandbox
              : AppEnvironment.live,
        ),
      );

  void updateLocale(String locale) => emit(
        state.copyWith(
          locale: locale,
        ),
      );

  @override
  AppState? fromJson(Map<String, dynamic> json) => AppState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppState state) => state.toJson();
}
