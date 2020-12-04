import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:infinity_scrolling/data/timeline_controller.dart';
import 'package:infinity_scrolling/data/timeline_repository.dart';
import 'package:infinity_scrolling/pages/in_sight_pattern.dart';
import 'package:infinity_scrolling/pages/last_index_pattern.dart';
import 'package:infinity_scrolling/pages/scroll_position_pattern.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (context) => TimelineRepository()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinity scrolling"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LastIndexPattern()),
              );
            },
            child: Text("Last Index Pattern"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScrollPositionPattern()),
              );
            },
            child: Text("Scroll Position Pattern"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InSightPattern()),
              );
            },
            child: Text("In Sight Pattern"),
          ),
        ],
      ),
    );
  }
}
