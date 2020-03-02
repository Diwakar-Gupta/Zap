import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zap/audioplayer/audioplayer.dart';

class Player extends StatefulWidget {
  final AudioPlayerr audioPlayer;

  Player({
    Key key,
    this.audioPlayer,
  }) : super(key: key);

  final child = _PlayerState();

  @override
  _PlayerState createState() => child;

  Widget getControls() {
    return child.getMiniControl();
  }
}

class _PlayerState extends State<Player> {
  AudioPlayerr _audioPlayer;
  MiniControl _miniControl;
  Duration position;

  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();
    if (widget.audioPlayer == null)
      _audioPlayer = AudioPlayerr.getDefault();
    else
      _audioPlayer = widget.audioPlayer;
    _miniControl = MiniControl(audioPlayer: _audioPlayer);

    position = Duration();
    playerState = AudioPlayerState.STOPPED;

    _audioPlayer.getAudioPlayer().onDurationChanged.listen((Duration d) {
      setState(() => position = d);
    });

    _audioPlayer
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
    return Expanded(
      child: Container(
        color: Colors.yellow,
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
      ),
    );
  }

  void onComplete() {}
}

class MiniControl extends StatefulWidget {
  const MiniControl({Key key, this.audioPlayer}) : super(key: key);

  @override
  _MiniControlState createState() => _MiniControlState();
  final AudioPlayerr audioPlayer;
}

class _MiniControlState extends State<MiniControl> {
  AudioPlayerr audioPlayer;

  @override
  void initState() {
    super.initState();
    if (widget.audioPlayer == null)
      audioPlayer = AudioPlayerr.getDefault();
    else
      audioPlayer = widget.audioPlayer;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
