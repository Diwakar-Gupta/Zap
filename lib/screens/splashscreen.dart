import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_particles/particles.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    //Navigator.pushReplacement( context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
Container(
  decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 1],
              colors: [Colors.red[900],Colors.indigo)),
)
      ],
    );
  }
}
