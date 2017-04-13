import 'package:flutter/material.dart';

class BugTabSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blue[100],
      child: new DefaultTabController(
        length: 3,
        child: new Stack(
          children: <Widget>[
            new TabBarView(
              children: <Widget>[
                new TabPage(
                    title: 'PAGE 1',
                ),
                new TabPage(
                    title: 'PAGE 2',
                ),
                new TabPage(
                    title: 'PAGE 3',
                ),
              ],
            ),
            new Align(
              alignment: const FractionalOffset(0.5, 0.95),
              child: new TabPageSelector(),
            )
          ],
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  TabPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new SizedBox(
          height: 100.0,
          child: new FlatButton(
            child: new Text('BACK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        new Flexible(
          child: new Container(
            child: new Align(
              alignment: const FractionalOffset(0.5, 0.5),
              child: new Text(
                title,
                style: const TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ),
        new Flexible(
          child: new Align(
            alignment: const FractionalOffset(0.5, 0.0),
            child: new Text('On some devices (e.g. Nexus 5X) page #3 circle is never selected'),
          ),
        ),
      ],
    );
  }
}