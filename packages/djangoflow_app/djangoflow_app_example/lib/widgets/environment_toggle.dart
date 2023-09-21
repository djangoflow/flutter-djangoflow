import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnvironmentToggle extends StatelessWidget {
  const EnvironmentToggle({super.key});

  @override
  Widget build(BuildContext context) => AppCubitBuilder(
        builder: (context, state) => SwitchListTile.adaptive(
          applyCupertinoTheme: true,
          value: state.environment == AppEnvironment.live,
          title: const Text('Live Environment'),
          onChanged: (_) {
            context.read<AppCubit>().toggleEnvironment();
          },
        ),
      );
}
