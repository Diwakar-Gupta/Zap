import 'package:flutter/material.dart';
import 'package:zap/screens/home.dart';
import 'package:zap/screens/player.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../main.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => new _LayoutState();
}

class _LayoutState extends State<Layout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Light Theme"),
              onTap: () {
                setTheme("light");
              },
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("Dark Theme"),
              onTap: () {
                setTheme("dark");
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
        collapsed: MiniControl(),
        panel: Player(),
        body: HomeScreen(),
      ),
    );
  }
}
/*



*/
