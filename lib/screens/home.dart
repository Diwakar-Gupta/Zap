import 'package:flutter/material.dart';

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
            Text("first page"),
            Text("second page"),
            Divider(

            )
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
