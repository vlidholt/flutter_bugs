import 'package:flutter/material.dart';

class BugInkResponse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('InkResponse'),
      ),
      body: new Builder(
        builder: (BuildContext context) {
          return new Center(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: new Material(
                    color: Colors.red[100],
                    child: new InkResponse(
                      onTap: () {
                        Scaffold.of(context).showSnackBar(
                          new SnackBar(
                            content: new Text('Got onTap event'),
                          )
                        );
                      },
                    ),
                  ),
                ),
                new Text('Tap and drag ever so slightly and the touches will be cancelled and no tap callback is triggered'),
              ],
            ),
          );
        }
      ),
    );
  }
}