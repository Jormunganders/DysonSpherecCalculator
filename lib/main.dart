import 'package:dyson_spherec_calculator/sky/pages/time_page.dart';
import 'package:flutter/material.dart';
import 'package:dyson_spherec_calculator/base/values.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

const HOME_PAGE_NAME = "时间";

/// todo: 之后进行分离
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(HOME_PAGE_NAME),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: "汽车",
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: "自行车",
              ),
              Tab(
                icon: Icon(Icons.directions_boat),
                text: '轮船',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TimePage(),
            DemoPage(),
            Center(
              child: Text("Nice"),
            )
          ],
        ),
      ),
    );
  }
}

/// 暂时不用
class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '计数:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
