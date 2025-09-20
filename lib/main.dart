import 'package:flutter/material.dart';

void main() {
  debugPrint('App starting...');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Ripple Effect'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Material(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12.0),
          child: InkWell(
            splashColor: Colors.teal.withOpacity(0.7),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Hello World!'),
              ));
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                ' Tap to see Ripple Effect',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
