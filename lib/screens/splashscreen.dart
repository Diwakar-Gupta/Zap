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
    var _duration = new Duration(seconds: 0);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Particles(
            20,
            Colors.white,
          ),
          Center(
            child: Text(
              'splash Screen',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
