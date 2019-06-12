import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

List<Widget> _tabsList = [
  Tab(
    icon: Icon(Icons.directions_bus),
  ),
  Tab(
    icon: Icon(Icons.map),
  ),
  Tab(
    icon: Icon(Icons.airplanemode_active),
  )
];

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: _tabsList.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text('TabBar'),
              bottom: TabBar(tabs: _tabsList),
            ),
            body: TabBarView(children: [
              Center(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.airplanemode_active),
                    Text('aaaaaaa')
                  ],
                ),
              ),
              Center(child: Text('aaaaaaaaaaaa')),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(color: Colors.red),
              )
            ]),
          )),
    );
  }
}