class Song {
  final String name;
  final double length;
  final String imgPath;
  final String desc;
  var liked = false;

  Song({this.name, this.length, this.imgPath, this.desc, this.liked = false})
      : assert(name != null);
}

final songs = [
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
    name: "reert wrgvs",
    length: 3.3,
    desc: "ojhgfxfgb hgvnbnb km ",
    imgPath: "assets/images/img2.jpg",
    liked: true,
  ),
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
    name: "reert wrgvs",
    length: 3.3,
    desc: "ojhgfxfgb hgvnbnb km ",
    imgPath: "assets/images/img2.jpg",
    liked: true,
  ),
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
      name: "reert wrgvs",
      length: 3.3,
      desc: "ojhgfxfgb hgvnbnb km ",
      imgPath: "assets/images/img2.jpg"),
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
    name: "reert wrgvs",
    length: 3.3,
    desc: "ojhgfxfgb hgvnbnb km ",
    imgPath: "assets/images/img2.jpg",
    liked: true,
  ),
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
      name: "reert wrgvs",
      length: 3.3,
      desc: "ojhgfxfgb hgvnbnb km ",
      imgPath: "assets/images/img2.jpg"),
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
      name: "reert wrgvs",
      length: 3.3,
      desc: "ojhgfxfgb hgvnbnb km ",
      imgPath: "assets/images/img2.jpg"),
  Song(
      name: "jkl dete",
      length: 2.3,
      desc: "this is description",
      imgPath: "assets/images/img1.jpg"),
  Song(
    name: "reert wrgvs",
    length: 3.3,
    desc: "ojhgfxfgb hgvnbnb km ",
    imgPath: "assets/images/img2.jpg",
    liked: true,
  ),
];
