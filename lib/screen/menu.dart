import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff0A0D22),
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'BMI CALCULATOR',
              ),
            ),

            ListTile(
              leading: Icon(Icons.input),
              title: Text('Welcome'),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Profile'),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Feedback'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
