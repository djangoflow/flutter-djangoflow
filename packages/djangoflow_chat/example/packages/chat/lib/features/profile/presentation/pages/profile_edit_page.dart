import 'package:chat/configurations/configurations.dart';
import 'package:flutter/material.dart';
import 'package:progress_builder/progress_builder.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(kPadding * 2),
          children: [
            const Center(child: Text('Editing profile content')),
            const SizedBox(
              height: kPadding * 2,
            ),
            LinearProgressBuilder(
              action: (_) async {
                // TODO implement validation
                // call api to update via AuthCubit and update current user object
              },
              onSuccess: () => context.popRoute(),
              builder: (context, action, error) => ElevatedButton(
                onPressed: action,
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      );
}
