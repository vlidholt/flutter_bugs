import 'package:flutter/material.dart';

class BugPrimaryScrollController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        new Container(
          color: Colors.purple[100],
          height: 150.0,
          child: new Center(
            child: new Text(
              'iOS issue only. Touches are not registered in the top part of the first list item. primary is set to false. Issue #15569',
              style: Theme.of(context).textTheme.body1,
            )
          ),
        ),
        new Flexible(
          child: new Scaffold(
            body: new CustomScrollView(
              primary: false,
              slivers: <Widget>[
                new SliverList(
                  delegate: new MyDelegate(),
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}

class MyDelegate extends SliverChildDelegate {
  @override
  bool shouldRebuild(SliverChildDelegate d) {
    return false;
  }

  @override
  Widget build(BuildContext context, int i) {
    if (i == 1) {
      return new RaisedButton(
          child: new Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
      );
    }

    return new ListTile(
      title: new Text('List tile #$i'),
      onTap: () {
      }
    );
  }
}