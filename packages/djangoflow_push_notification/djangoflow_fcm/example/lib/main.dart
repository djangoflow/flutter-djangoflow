import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      // TODO add firebase options to test
      // options: DefaultFirebaseOptions.currentPlatform,
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

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Djangoflow FCM Example'),
      ),
      body: BlocConsumer<DjangoflowFCMBloc, DjangoflowFCMState>(
        listener: (context, state) {
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
        builder: (context, state) {
          final fcmToken = state.token;

          return ListView(
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
              ] else
                Text(fcmToken),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}
