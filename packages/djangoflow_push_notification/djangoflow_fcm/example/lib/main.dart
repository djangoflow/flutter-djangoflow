import 'package:djangoflow_fcm/djangoflow_fcm.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
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
      body: DjangoflowFCMBlocListener(
        listener: (context, state) {},
        child: DjangoflowFCMBlocTokenListener(
          listener: (context, state) {},
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Subscribe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
