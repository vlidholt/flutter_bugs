import 'package:flutter/material.dart';

import 'bug_primary_scroll_controller.dart';
import 'bug_cupertino_reload.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Bugs',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bugs'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('bug_primary_scroll_controller'),
            subtitle: Text('Blocks touch input'),
            onTap: () { _openTest(context, BugPrimaryScrollController()); }
          ),
          ListTile(
            title: Text('bug_cupertino_reload'),
            subtitle: Text('Cupertino Reload fails'),
            onTap: () { _openTest(context, BugCupertinoReload()); }
          ),
        ],
      ),
    );
  }

  void _openTest(BuildContext context, Widget test) {
    Navigator.push(context, new MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return test;
      }
    ));
  }
}
