import 'package:djangoflow_scrollable_column/djangoflow_scrollable_column.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: DjangoflowScrollableColumn(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            10,
            (index) => ListTile(
              title: Text('Item ${index + 1}'),
            ),
          ),
        ),
      );
}
