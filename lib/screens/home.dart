import 'package:flutter/material.dart';
import 'package:zap/models/music.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: songs.length,
            itemBuilder: (BuildContext context, int index) {
              Song song = songs[index];
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        )
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      height: 50,
                      width: 50,
                      image: AssetImage(song.imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(song.name, style: TextStyle(fontSize: 20)),
                subtitle: Text(song.desc),
                trailing: Icon(Icons.play_arrow),
              );
            }));
  }
}
/*



*/
