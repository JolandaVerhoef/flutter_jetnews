import 'package:flutter/material.dart';
import 'package:jetnews/src/ui/routes.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('jetnews'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PageRoutes.home);
            },
          ),
          ListTile(
            title: Text('Interests'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PageRoutes.interests);
            },
          ),
        ],
      ),
    );
  }
}