import 'package:flutter/material.dart';
import 'package:navigator_app/second_page.dart';
import 'package:navigator_app/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder> {
        '/first': (BuildContext context) => const FirstPage(),
        '/second': (BuildContext context) => const SecondPage(),
        '/third': (BuildContext context) => const ThirdPage(),
      },
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Sample App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('First Page', style: TextStyle(fontSize: 40.0)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: const Text('Go to Second Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              },
              child: const Text('Go to Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
