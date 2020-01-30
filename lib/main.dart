import 'package:flutter/material.dart';
import 'package:jetnews_flutter/src/ui/home/home_screen.dart';
import 'package:jetnews_flutter/src/ui/interests/interests_screen.dart';
import 'package:jetnews_flutter/src/ui/themes.dart';

void main() => runApp(JetnewsApp());

class JetnewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jetnews',
      theme: Themes.lightThemeData,
      darkTheme: Themes.darkThemeData,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _index = 0;
  var _widgetTitles = <Widget>[
    Text('Jetnews'),
    Text('Interests'),
  ];
  var _widgetOptions = <Widget>[
    HomeScreen(),
    InterestsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _widgetTitles[_index],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('jetnews'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                _onItemTapped(0);
              },
            ),
            ListTile(
              title: Text('Interests'),
              onTap: () {
                _onItemTapped(1);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions[_index],
    );
  }
}
