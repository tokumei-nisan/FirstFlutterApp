import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar And TabBarView App',
      theme: ThemeData(
        useMaterial3: false,  // Material 3�𖳌��ɂ���
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Tab> _tabs = <Tab> [
    const Tab(text:'HOME', icon: Icon(Icons.home)),
    const Tab(text:'MESSAGE', icon: Icon(Icons.message)),
    const Tab(text:'SETTING', icon: Icon(Icons.settings)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample App'),
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: const TabBarView(
            children: <Widget> [
              TabPage(title: 'HOME', textColor: Colors.black),
              TabPage(title: 'MESSAGE', textColor: Colors.red),
              TabPage(title: 'SETTING', textColor: Colors.green,),
            ]
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {

  final String title;
  final Color textColor;

  const TabPage({
    super.key,
    required this.title,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(
              fontSize: 64.0,
              color: textColor
          ),),
        ],
      ),
    );
  }
}