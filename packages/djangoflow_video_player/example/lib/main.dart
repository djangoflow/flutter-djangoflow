import 'package:flutter/material.dart';
import 'package:djangoflow_video_player/djangoflow_video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Djangoflow Video Player Example',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Djangoflow Video Player'),
      ),
      body: const SizedBox(
        height: 400,
        child: VideoPlayerWidget(
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4', // Replace with a valid video URL
        ),
      ),
    );
  }
}
