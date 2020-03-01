import 'package:flutter/material.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(

      // ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Light Theme"),
              onTap: (){
                changeTheme("light");
              },
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("Dark Theme"),
              onTap: (){
                changeTheme("dark");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("First Screen"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("First Screen"),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("First Screen"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("First Screen"),
              onTap: (){},
            ),
            Divider()
          ],
        ),
      ),
      body: new Center(
        child: new Text(
          'Welcome to Home.!',
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 30,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_pizza,
            size: 30,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wb_sunny,
          ),
          title: SizedBox.shrink(),
        ),
      ]),
    );
  }
}
