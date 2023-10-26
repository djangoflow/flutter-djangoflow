import 'package:bloc_test/bloc_test.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app/src/presentation/env_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

/// A mock implementation of [AppCubit].
class MockAppCubit extends MockCubit<AppState> implements AppCubit {}

void main() {
  late MockAppCubit cubit;

  setUpAll(() {
    cubit = MockAppCubit();
  });

  testWidgets(
    'Env is switched by long pressing on EnvSwitcher',
    (tester) async {
      await tester.pumpWidget(
        BlocProvider<AppCubit>(
          create: (context) => cubit,
          child: const MaterialApp(
            home: Scaffold(
              body: EnvSwitcher(
                child: Text('Some widget'),
              ),
            ),
          ),
        ),
      );

      expect(find.byType(EnvSwitcher), findsOneWidget);
      await tester.longPress(find.byType(EnvSwitcher));

      /// Verify that the cubit's toggleEnvironment method was called once.
      verify(cubit.toggleEnvironment).called(1);
    },
  );
}
