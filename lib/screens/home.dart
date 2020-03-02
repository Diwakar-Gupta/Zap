import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zap/models/music.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 55),
        itemCount: songs.length,
        itemBuilder: (BuildContext context, int index) {
          Song song = songs[index];
          return SongWidget(song);
        });
  }
}

class SongWidget extends StatefulWidget {
  final Song song;

  const SongWidget(this.song, {Key key}) : super(key: key);
  @override
  _SongWidgetState createState() => _SongWidgetState();
}

class _SongWidgetState extends State<SongWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //selected: playingSong == widget.song ? true : false,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(widget.song.imgPath),
      ),
      title: Text(widget.song.name, style: TextStyle(fontSize: 20)),
      subtitle: Text(widget.song.desc),
      trailing: Wrap(
        spacing: 5,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                widget.song.liked = !widget.song.liked;
              });
            },
            child: widget.song.liked
                ? Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.red,
                  )
                : Icon(FontAwesomeIcons.heart),
          ),
          PopupMenuButton(
            onSelected: (d) {},
            itemBuilder: (_) => [
              PopupMenuItem(value: "1", child: Text('item 1')),
              PopupMenuItem(value: "2", child: Text('item 1')),
            ],
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
