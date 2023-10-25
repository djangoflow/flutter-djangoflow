import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A widget that toggles the app's environment when long pressed.
class EnvSwitcher extends StatelessWidget {
  final Widget child;

  const EnvSwitcher({super.key, required this.child});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onLongPress: () => context.read<AppCubit>().toggleEnvironment(),
        child: child,
      );
}
