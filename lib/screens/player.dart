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
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                )
              ]),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  )
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage("assets/images/img3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
