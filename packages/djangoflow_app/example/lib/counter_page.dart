import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:example/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppCubitBuilder(
        buildWhen: (previous, current) =>
            previous.environment != current.environment,
        builder: (context, state) {
          final env = state.environment;
          return SandboxBanner(
            isSandbox: env == AppEnvironment.sandbox,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[CounterText()],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: context.read<CounterCubit>().increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: context.read<CounterCubit>().decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: toogleLightOrDark,
                child: const Icon(Icons.color_lens),
              ),
              const SizedBox(width: 8),
              FloatingActionButton(
                onPressed: AppCubit.instance.toggleEnvironment,
                child: const Icon(Icons.change_circle),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void toogleLightOrDark() {
    final mode = AppCubit.instance.state.themeMode;
    AppCubit.instance.updateThemeMode(
      mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
