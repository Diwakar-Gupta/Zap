import 'package:flutter/material.dart';
import 'package:zap/screens/layout.dart';

final app = MyApp();

void main() => runApp(app);

bool setTheme(String themeName) {
  return app.setTheme(themeName);
}

class MyApp extends StatefulWidget {
  final _child = _MyAppState();
  @override
  _MyAppState createState() => _child;

  bool setTheme(String themeName) {
    return _child.setTheme(themeName);
  }
}

class _MyAppState extends State<MyApp> {
  String _defaultTheme = 'dark';

  final _themes = {
    "light": ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.cyan,
      fontFamily: 'Georgia',
    ),
    "dark": ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],
      fontFamily: 'Georgia',
    ),
  };

  bool setTheme(String themeName) {
    setState(() {
      _defaultTheme = themeName;
    });
    return _themes.containsKey(themeName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _themes[_defaultTheme],
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
    return Layout();
  }
}
