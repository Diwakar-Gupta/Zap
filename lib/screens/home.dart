import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:zap/screens/player.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Center(
          child: RaisedButton(
        onPressed: (){},
        child: Text('Welcome to Home.!'),
      )),
      bottomSheet: Player()
    );
  }
}
