import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BugCupertinoReload extends StatefulWidget {
  @override
  BugCupertinoReloadState createState() => BugCupertinoReloadState();
}

class BugCupertinoReloadState extends State<BugCupertinoReload> {
  @override
  Widget build(BuildContext context) {
    var refresh = CupertinoRefreshControl(
      onRefresh: () {
        return new Future<void>.delayed(const Duration(seconds: 2))
        ..then((_) => setState(() {}));
      },
    );

    var slivers = <Widget>[
      refresh,
      new SliverList(
        delegate: new SliverChildBuilderDelegate(
          _itemBuilder,
        ),
      ),
    ];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Reload Bug'),),
      body: CustomScrollView(
        slivers: slivers,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int idx) {
    return ListTile(
      title: Text('Item $idx'),
    );
  }
}