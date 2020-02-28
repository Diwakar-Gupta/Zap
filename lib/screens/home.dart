import 'package:flutter/material.dart';
import 'package:zap/screens/player.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Player player = Player();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Light Theme"),
              onTap: () {
                changeTheme("light");
              },
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("Dark Theme"),
              onTap: () {
                changeTheme("dark");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("First Screen"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("First Screen"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("First Screen"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("First Screen"),
              onTap: () {},
            ),
            Divider()
          ],
        ),
      ),
      body: SlidingUpPanel(
        minHeight: 55,
        maxHeight: MediaQuery.of(context).size.height,
        color: Theme.of(context).scaffoldBackgroundColor,
        collapsed: player.getControls(),
        panel: player,
        body: Center(
          child: Text("home page"),
        ),
      ),
    );
  }
}
/*



*/
