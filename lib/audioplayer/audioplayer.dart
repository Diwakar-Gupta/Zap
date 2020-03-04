import 'package:audioplayers/audioplayers.dart';
import 'package:zap/models/music.dart';

final audoiPlayer = AudioPlayerr();

class AudioPlayerr {
  final AudioPlayer _player = new AudioPlayer();

  AudioPlayer getAudioPlayer() {
    return _player;
  }

  bool previous() {
    return false;
  }

  bool next() {
    return false;
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

  Future<int> playSong(Song song) async {
    int result = await play(song.name,isLocal: true);
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

  Future<int> release() async {
    int result = await _player.release();
    return result;
  }
}
