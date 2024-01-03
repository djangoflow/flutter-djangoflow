import 'package:bloc_test/bloc_test.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AppCubit tests', () {
    late Storage storage;

    setUpAll(() async {
      /// Create mock storage
      storage = MockStorage();

      /// Stub the storage write method
      when(() => storage.write(any(), any<dynamic>())).thenAnswer((_) async {});

      /// Supply the mocked storage to HydratedBloc storage setter
      HydratedBloc.storage = storage;
    });

    blocTest(
      'Can initialize singleton with AppCubit.initialState',
      build: () {
        AppCubit.initialState = const AppState(
          firstRun: false,
          environment: AppEnvironment.live,
          locale: 'en',
          themeMode: ThemeMode.light,
        );

        return AppCubit.instance;
      },
      tearDown: () => AppCubit.initialState = null,
      verify: (bloc) {
        expect(bloc.state.firstRun, false);
      },
    );

    blocTest(
      'AppCubit is initialized correctly',
      build: AppCubit.internal,
      verify: (bloc) {
        expect(
          bloc.state,
          isA<AppState>()
              .having((state) => state.firstRun, 'firstRun', true)
              .having((state) => state.environment, 'env', AppEnvironment.live)
              .having((state) => state.locale, 'locale', 'en')
              .having((state) => state.themeMode, 'themeMode', ThemeMode.light),
        );
      },
    );

    blocTest(
      'AppCubit.instance provides singleton',
      build: () => AppCubit.instance,
      verify: (bloc) {
        expect(bloc, equals(AppCubit.instance));
      },
    );

    blocTest(
      'calling firstRunDone sets first run as false',
      build: AppCubit.internal,
      act: (bloc) => bloc.firstRunDone(),
      expect: () => [
        isA<AppState>().having((state) => state.firstRun, 'firstRun', false),
      ],
    );

    blocTest(
      'calling updateThemeMode with different theme mode will emit new state',
      build: AppCubit.internal,
      seed: () => const AppState(themeMode: ThemeMode.light),
      act: (bloc) => bloc.updateThemeMode(ThemeMode.dark),
      expect: () => [
        isA<AppState>().having(
          (state) => state.themeMode,
          'themeMode',
          ThemeMode.dark,
        ),
      ],
    );

    blocTest(
      'calling updateThemeMode with same theme mode will not emit state',
      build: AppCubit.internal,
      seed: () => const AppState(themeMode: ThemeMode.light),
      act: (bloc) => bloc.updateThemeMode(ThemeMode.light),
      expect: () => [],
    );

    blocTest(
      'calling toggleEnvironment will switch to live from sandbox environment',
      build: AppCubit.internal,
      seed: () => const AppState(environment: AppEnvironment.sandbox),
      act: (bloc) => bloc.toggleEnvironment(),
      expect: () => [
        isA<AppState>().having(
          (state) => state.environment,
          'environment',
          AppEnvironment.live,
        ),
      ],
    );

    blocTest(
      'calling toggleEnvironment will switch to sandbox from live environment',
      build: AppCubit.internal,
      seed: () => const AppState(environment: AppEnvironment.live),
      act: (bloc) => bloc.toggleEnvironment(),
      expect: () => [
        isA<AppState>().having(
          (state) => state.environment,
          'environment',
          AppEnvironment.sandbox,
        ),
      ],
    );

    blocTest(
      'calling updateLocale will emit new state with updated locale',
      build: AppCubit.internal,
      act: (bloc) => bloc.updateLocale('fr'),
      expect: () => [
        isA<AppState>().having((state) => state.locale, 'locale', 'fr'),
      ],
    );
  });
}
