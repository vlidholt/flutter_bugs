import 'package:flutter/material.dart';

class BugTabBar extends StatefulWidget {
  @override
  BugTabBarState createState() => new BugTabBarState();
}

class BugTabBarState extends State<BugTabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final numTabs = 20;

    TabController controller = new TabController(
      initialIndex: numTabs - 1,
      length: numTabs,
      vsync: this,
    );

    List<Tab> tabs = <Tab>[];
    for (int i = 0; i < numTabs; i++) {
      tabs.add(
        new Tab(
          text: 'Tab #$i',
        ),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TabBar'),
        bottom: new TabBar(
          isScrollable: true,
          controller: controller,
          tabs: tabs
        ),
      ),
      body: new Text('The initially selected tab (#19) is not initially visible on screen. Scrolling of the tabs need to be adjusted.'),
    );
  }
}