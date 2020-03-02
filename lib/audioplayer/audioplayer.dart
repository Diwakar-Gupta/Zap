import 'package:audioplayers/audioplayers.dart';

class AudioPlayerr {
  static final _defaultPlayer = AudioPlayerr(); 
  final AudioPlayer _player = new AudioPlayer();

  static AudioPlayerr getDefault(){
    return _defaultPlayer;
  }

  AudioPlayer getAudioPlayer(){
    return _player;
  }

  Future<int> prepare(String url) async {
    int result = await _player.setUrl(url);
    if (result == 1) {
      // success
    }
    return result;
  }

  Future<int> play(String url, {bool isLocal = true}) async {
    int result = await _player.play(url, isLocal: isLocal);
    if (result == 1) {
      // success
    }
    return result;
  }

  Future<int> pause() async {
    int result = await _player.pause();
    if (result == 1) {
      // success
    }
    return result;
  }

  Future<int> resume() async {
    int result = await _player.resume();
    if (result == 1) {
      // success
    }
    return result;
  }

  Future<int> stop() async {
    int result = await _player.stop();
    if (result == 1) {
      // success
    }
    return result;
  }

  Future<int> release() async{
    int result = await _player.release();
    return result;
  }
}
