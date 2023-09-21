import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    final packageInfo = AppCubit.packageInfo;

    if (packageInfo == null) return const SizedBox.shrink();

    return AppCubitBuilder(
      builder: (context, state) {
        return Text(
          '${packageInfo.version}${switch (state.environment) {
            AppEnvironment.sandbox => ' (sandbox)',
            _ => '',
          }}',
          style: Theme.of(context).textTheme.labelSmall,
        );
      },
    );
  }
}
