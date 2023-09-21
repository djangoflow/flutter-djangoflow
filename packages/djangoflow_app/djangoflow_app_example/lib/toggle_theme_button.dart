import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleThemeModeButton extends StatelessWidget {
  const ToggleThemeModeButton({super.key});

  @override
  Widget build(BuildContext context) => AppCubitBuilder(
        builder: (context, state) => IconButton(
          onPressed: () => context.read<AppCubit>().updateThemeMode(
                switch (state.themeMode) {
                  ThemeMode.dark => ThemeMode.light,
                  _ => ThemeMode.dark,
                },
              ),
          icon: Icon(
            switch (state.themeMode) {
              ThemeMode.dark => Icons.dark_mode,
              _ => Icons.light_mode,
            },
          ),
        ),
      );
}
