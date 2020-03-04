import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zap/audioplayer/audioplayer.dart';

class Player extends StatefulWidget {
  final child = _PlayerState();

  @override
  _PlayerState createState() => child;
}

class _PlayerState extends State<Player> {
  MiniControl _miniControl;
  Duration position;

  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();

    position = Duration();
    playerState = AudioPlayerState.STOPPED;

    audoiPlayer.getAudioPlayer().onDurationChanged.listen((Duration d) {
      setState(() => position = d);
    });

    audoiPlayer
        .getAudioPlayer()
        .onPlayerStateChanged
        .listen((AudioPlayerState s) {
      setState(() => playerState = s);
    });

    /*

    _audioPlayer.getAudioPlayer().onAudioPositionChanged.listen((Duration  p) => {
    setState(() => position = p);
  });

    _audioPlayer.getAudioPlayer().onPlayerCompletion.listen((event) {
    onComplete();
        setState(() {
        });
      });
    
        _audioPlayer.getAudioPlayer().onPlayerError.listen((msg) {
        print('audioPlayer error : $msg');
        setState(() {
        });
      });
      
      */
  }

  Widget getMiniControl() {
    return _miniControl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          direction: Axis.vertical,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('play'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('pause'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('resume'),
            ),
          ],
        ),
      ),
    );
  }

  void onComplete() {}
}

class MiniControl extends StatefulWidget {
  @override
  _MiniControlState createState() => _MiniControlState();
}

class _MiniControlState extends State<MiniControl> {
  AudioPlayerState state;

  @override
  void initState() {
    super.initState();
    state = audoiPlayer.getAudioPlayer().state;
    audoiPlayer
        .getAudioPlayer()
        .onPlayerStateChanged
        .listen((AudioPlayerState s) {
      setState(() {
        setState(() {
          state = s;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.arrowLeft), onPressed: () {
            audoiPlayer.previous();
          }),
          IconButton(
              icon: (state == AudioPlayerState.PLAYING)
                  ? Icon(FontAwesomeIcons.pause)
                  : Icon(FontAwesomeIcons.play),
              onPressed: () {
                if (state == AudioPlayerState.PLAYING)
                  audoiPlayer.pause();
                else
                  audoiPlayer.resume();
              }),
          IconButton(icon: Icon(FontAwesomeIcons.arrowRight), onPressed: () {
            audoiPlayer.next();
          }),
        ],
      ),
    );
  }
}
