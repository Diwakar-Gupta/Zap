import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Player extends StatefulWidget {
  final child = _PlayerState();
  @override
  _PlayerState createState() => child;

  Widget getControls() {
    return child.controls;
  }
}

class _PlayerState extends State<Player> {
  AudioPlayer ac;

  play() async {
    await ac.play('172.16.1.45/sample.mp3');
    //await ac.play('/storage/emulated/0/Download/sample.mp3',isLocal: true);
  }


  final controls = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(FontAwesomeIcons.poll),
        Icon(FontAwesomeIcons.play),
        Icon(FontAwesomeIcons.poo),
      ],
    ),
  );

  var top;

  @override
  void initState() {
    super.initState();
    top = controls;
    ac = new AudioPlayer();
    AudioPlayer.logEnabled = true;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(onPressed: (){
        play();
      },child: Text('press'),)
    );
  }
}
