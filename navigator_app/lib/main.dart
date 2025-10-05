import 'package:flutter/material.dart';
import 'package:navigator_app/second_page.dart';
import 'package:navigator_app/third_page.dart';
import 'package:navigator_app/fourth_page.dart';
import 'package:navigator_app/constants.dart';
import 'package:navigator_app/page_routes.dart';

void main() {
  String text = Constants.message;
  print(text);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder> {
        PageRoutes.firstPage: (context) => const FirstPage(),
        PageRoutes.secondPage: (context) => const SecondPage(),
        PageRoutes.thirdPage: (context) => const ThirdPage(),
        PageRoutes.fourthPage: (context) => const FourthPage()
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
                Navigator.of(context).pushNamed(PageRoutes.secondPage);
              },
              child: const Text('Go to Second Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PageRoutes.thirdPage);
              },
              child: const Text('Go to Third Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PageRoutes.fourthPage, arguments: 'Hello world');
              },
              child: const Text('Go to Fourth Page'),
            ),
          ],
        ),
      ),
    );
  }
}
