import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

import '../helpers/hydrated_bloc.dart';

var fakeAppState = const AppState(
    firstRun: false,
    environment: AppEnvironment.sandbox,
    locale: 'es',
    brightness: Brightness.dark);

void main() {
  initHydratedStorage();

  late AppCubit appCubit;

  setUp(() => appCubit = AppCubit());

  group('Test cases for AppCubit methods', () {
    blocTest<AppCubit, AppState>(
      'Initial state is correct',
      build: () => appCubit,
      act: (cubit) => cubit.state,
      verify: (cubit) => expect(
        cubit.state,
        equals(
          const AppState(),
        ),
      ),
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits first run is false',
      build: () => appCubit,
      act: (cubit) => cubit.firstRunDone(),
      expect: () => [
        const AppState(
          firstRun: false,
        ),
      ],
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits Brightness.dark when the initial value is Brightness.light',
      build: () => appCubit,
      act: (cubit) => cubit.toggleBrightness(),
      expect: () => [
        const AppState(
          brightness: Brightness.dark,
        ),
      ],
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits Brightness.light when the initial value is Brightness.dark',
      build: () => appCubit,
      seed: () => fakeAppState.copyWith(brightness: Brightness.light),
      act: (cubit) => cubit.toggleBrightness(),
      expect: () => [fakeAppState],
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits AppEnvironment.sandbox if the initial value is AppEnvironment.live',
      build: () => appCubit,
      act: (cubit) => cubit.toggleEnvironment(),
      expect: () => [
        const AppState(environment: AppEnvironment.sandbox),
      ],
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits AppEnvironment.live if the initial value is AppEnvironment.sandbox',
      build: () => appCubit,
      seed: () => fakeAppState.copyWith(environment: AppEnvironment.live),
      act: (cubit) => cubit.toggleEnvironment(),
      expect: () => [fakeAppState],
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits Default locale == en',
      build: () => appCubit,
      act: (cubit) => cubit.toggleLocale('en'),
      expect: () => [
        const AppState(locale: 'en'),
      ],
    );

    blocTest<AppCubit, AppState>(
      'Cubit emits new locale if the value passed is not en',
      build: () => appCubit,
      seed: () => fakeAppState.copyWith(locale: 'en'),
      act: (cubit) => cubit.toggleLocale('es'),
      expect: () => [fakeAppState],
    );
  });

  group('Test cases for AppCubit toJson/fromJson', () {
    test('emits correct state', () {
      expect(
        appCubit.fromJson(appCubit.toJson(appCubit.state)!),
        appCubit.state,
      );
    });

    blocTest<AppCubit, AppState>(
      'emits incorrect state',
      build: () => appCubit,
      act: (cubit) => cubit.fromJson(fakeAppState.toJson()),
      expect: () => [],
    );
  });
}
