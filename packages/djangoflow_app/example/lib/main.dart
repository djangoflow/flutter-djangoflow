import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:example/bloc/counter_cubit.dart';
import 'package:example/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => DjangoflowAppRunner.run(
      onException: (exception, stackTrace) {
        // Your custom exception handling
      },
      rootWidgetBuilder: (appBuilder) async {
        return MaterialApp(
          title: 'Djangoflow App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: appBuilder(
            AppBuilder(
              repositoryProviders: [
                // Your repository providers
              ],
              providers: [
                // Your BLoC providers

                // This is a simple counter app, we are making the CounterCubit global for demonstration
                // In a more complex app, making CounterCubit scoped to the CounterPage would be recommended.
                BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
              ],
              listeners: [
                // Your BLoC listeners
              ],
              builder: (_) => const CounterPage(),
            ),
          ),
        );
      },
    );
