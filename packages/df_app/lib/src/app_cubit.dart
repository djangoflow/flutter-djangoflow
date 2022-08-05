import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'app_cubit.freezed.dart';
part 'app_cubit.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool loading,
    @Default(true) bool firstRun,
    @Default('production') String environment,
    @Default('en') String language,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

class AppCubit extends HydratedCubit<AppState> {
  AppCubit() : super(AppState());

  @override
  AppState? fromJson(Map<String, dynamic> json) => AppState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppState state) => state.toJson();
}
