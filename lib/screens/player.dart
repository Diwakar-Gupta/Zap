import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  final child = _PlayerState();
  @override
  _PlayerState createState() => child;

  Widget getControls() {
    return child.controls;
  }
}

class _PlayerState extends State<Player> {
  final controls = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('<<'),
        Text('||'),
        Text('>>'),
      ],
    ),
  );

  var top;

  @override
  void initState() {
    super.initState();
    top = controls;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('data'),
      ),
    );
  }
}
