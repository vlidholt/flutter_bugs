import 'package:flutter/material.dart';

class BugFadedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = <Widget>[];
    for (int i = 0; i < 50; i++) {
      items.add(
          new Text(
            'Item #$i. TextOverflow.fade breaks when scrolling. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            maxLines: 3,
            overflow: TextOverflow.fade,
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Faded Text')
      ),
      body: new ListView(
        children: items,
      ),
    );
  }
}