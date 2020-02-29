import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zap/models/music.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var playingSong = songs[2];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 55),
        itemCount: songs.length,
        itemBuilder: (BuildContext context, int index) {
          Song song = songs[index];
          return ListTile(
            selected: playingSong == song ? true : false,
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(song.imgPath),
            ),
            title: Text(song.name, style: TextStyle(fontSize: 20)),
            subtitle: Text(song.desc),
            trailing: Wrap(
              spacing: 5,
              children: <Widget>[
                GestureDetector(
                  onTap: (){},
                  child: Icon(FontAwesomeIcons.heart),
                ),
                GestureDetector(
                  child: Icon(Icons.more_vert),
                  onTap: () {
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(20, 20, 20, 20),
                      items: [
                        PopupMenuItem(child: Text('add')),
                        PopupMenuItem(child: Text('play'))
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        });
  }
}
