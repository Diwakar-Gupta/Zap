import 'package:flutter/material.dart';
import 'package:zap/screens/splashscreen.dart';

final app = MyApp();

void main() => runApp(app);

bool changeTheme(String themeName) {
  return app.setTheme(themeName);
}

class MyApp extends StatefulWidget {
  final child = _MyAppState();
  @override
  _MyAppState createState() => child;

  String defaultTheme = 'dark';

  final themes = {
    "light": ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.cyan,
      fontFamily: 'Georgia',
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),
    "dark": ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],
      fontFamily: 'Georgia',
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),
  };

  bool setTheme(String themeName) {
    child.setState(() {
      defaultTheme = themeName;
    });
    return themes.containsKey("themeName");
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: widget.themes[widget.defaultTheme],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
