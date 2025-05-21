import 'package:djangoflow_emoji_rain/djangoflow_emoji_rain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _showRain = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    _showRain = true;
                  });
                },
                child: const Text('Start rain'),
              ),
            ),
            if (_showRain)
              Rain(
                emojiList: [
                  RainDropEmoji(emoji: '💧', emojiSize: 50),
                  RainDropEmoji(emoji: '💦', emojiSize: 30),
                  RainDropEmoji(
                      emoji: "\$", emojiSize: 40, emojiColor: Colors.green),
                  RainDropEmoji(emoji: '💦', emojiSize: 20)
                ],
                numberOfRainDrops: 100,
                fallSpeedFactor: 2,
                onRainStopped: () {
                  setState(() {
                    _showRain = false;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}
