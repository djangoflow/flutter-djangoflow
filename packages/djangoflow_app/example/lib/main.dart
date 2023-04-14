import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';

void main() => DjangoflowAppRunner.run(
      onException: (exception, stackTrace) {
        // Your custom exception handling
      },
      rootWidgetBuilder: (appBuilder) async {
        return MaterialApp(
          title: 'Djangoflow App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: appBuilder(AppBuilder(
            repositoryProviders: [
              // Your repository providers
            ],
            providers: [
              // Your BLoC providers
            ],
            listeners: [
              // Your BLoC listeners
            ],
            builder: (context) => const MyHomePage(title: 'Example App'),
          )),
        );
      },
    );



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
