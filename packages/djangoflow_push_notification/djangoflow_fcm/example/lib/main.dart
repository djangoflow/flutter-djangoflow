import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DjangoflowFCMBloc>(
          create: (context) => DjangoflowFCMBloc(
            DjangoflowFCMRepository(FirebaseMessaging.instance),
          ),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage();

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  String? _fcmToken;

  String? get fcmToken => _fcmToken;

  set fcmToken(String? value) {
    setState(() {
      _fcmToken = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Djangoflow FCM Example'),
      ),
      body: DjangoflowFCMBlocListener(
        listener: (context, state) {
          fcmToken = state.token;
          final notification = state.remoteMessage?.notification;
          if (notification != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  <String>[
                    if (notification.title != null) notification.title!,
                    if (notification.body != null)
                      notification.body!
                    else
                      'Message Received',
                  ].join('\n'),
                ),
              ),
            );
          }
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (fcmToken == null) ...[
              const Text('Token is null'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => context.read<DjangoflowFCMBloc>().add(
                      DjangoflowFCMTokenRequested(),
                    ),
                child: const Text('Request FCM Token'),
              ),
            ] else if (fcmToken != null)
              Text(fcmToken!),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
