import 'package:blue/blue_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Bluetooth Demo'),
          ),
          body: TabBarView(
            children: [
              FlutterBlueHome(),
              Icon(Icons.directions_transit),
            ],
          ),
          bottomNavigationBar: Container(
            constraints: BoxConstraints(maxHeight: 60.0),
            child: Material(
              color: Colors.black12,
              child: TabBar(
                indicatorColor: Colors.indigo,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.bluetooth),
                    text: 'blue',
                  ),
                  Tab(
                    icon: Icon(Icons.bluetooth),
                    text: 'serial',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
