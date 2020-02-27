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
        child: new Text('Welcome to Home.!'),
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
          icon: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage('http://i.imgur.com/zL4krbz.jpg'),
          ),
          title: SizedBox.shrink(),
        ),
      ]),
    );
  }
}
