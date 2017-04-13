import 'package:flutter/material.dart';

import 'bug_faded_text.dart';
import 'bug_ink_response.dart';
import 'bug_primary_scroll_controller.dart';
import 'bug_tab_bar.dart';

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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Bugs'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('bug_ink_response'),
            subtitle: new Text('Touches are incorrectly cancelled'),
            onTap: () { _openTest(context, new BugInkResponse()); }
          ),
          new ListTile(
            title: new Text('bug_primary_scroll_controller'),
            subtitle: new Text('Blocks touch input'),
            onTap: () { _openTest(context, new BugPrimaryScrollController()); }
          ),
          new ListTile(
            title: new Text('bug_tab_bar'),
            subtitle: new Text('Scrolling of TabBar is incorrect'),
            onTap: () { _openTest(context, new BugTabBar()); }
          ),
          new ListTile(
            title: new Text('bug_faded_text'),
            subtitle: new Text('TextOverflow.fade breaks when scrolling'),
            onTap: () { _openTest(context, new BugFadedText()); }
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
