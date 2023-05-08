import 'package:chat/configurations/router/router.dart';
import 'package:chat/configurations/theme/size_constants.dart';
import 'package:chat/features/authentication/authentication.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthCubit>().state.user;
    final appCubit = context.read<AppCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(kPadding * 2),
        children: [
          Text('Hi ${user?.firstName ?? 'Anynomus user'}'),
          const SizedBox(
            height: kPadding * 2,
          ),
          ElevatedButton(
            onPressed: () => appCubit.updateThemeMode(ThemeMode.light),
            child: const Text('Use Light theme'),
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          ElevatedButton(
            onPressed: () => appCubit.updateThemeMode(ThemeMode.dark),
            child: const Text('Use Dark theme'),
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          ElevatedButton(
            onPressed: () => appCubit.updateThemeMode(ThemeMode.system),
            child: const Text('Use System theme'),
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          ElevatedButton(
            onPressed: () {
              context.navigateTo(const ProfileEditRoute());
            },
            child: const Text('Edit profile'),
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          TextButton(
            onPressed: () {
              context.read<AuthCubit>().logout();
            },
            child: const Text('Logout'),
          )
        ],
      ),
    );
  }
}
