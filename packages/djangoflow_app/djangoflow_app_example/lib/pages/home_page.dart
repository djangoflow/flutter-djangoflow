import 'package:djangoflow_app_example/widgets/toggle_theme_button.dart';
import 'package:flutter/material.dart';

import '../utils/app_exception.dart';
import '../widgets/app_version.dart';
import '../widgets/environment_toggle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Djangoflow App'),
        actions: const [ToggleThemeModeButton()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const EnvironmentToggle(),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    child: const Text('Throw exception'),
                    onPressed: () => throw const AppException('Test exception'),
                  ),
                ],
              ),
            ),
            const AppVersion(),
          ],
        ),
      ),
    );
  }
}