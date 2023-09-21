import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnvironmentToggle extends StatelessWidget {
  const EnvironmentToggle({super.key});

  @override
  Widget build(BuildContext context) => AppCubitConsumer(
        listenWhen: (previous, current) =>
            previous.environment != current.environment &&
            current.environment == AppEnvironment.live,
        listener: (context, state) {
          DjangoflowAppSnackbar.showInAppNotification(
            title: 'Environment Changed',
            body: 'App is in live environment now.',
          );
        },
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
